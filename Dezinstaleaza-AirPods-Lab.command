#!/bin/bash
set -euo pipefail
check_only=false
if [[ "${1:-}" == "--check" ]]; then check_only=true; elif [[ $# -gt 0 ]]; then printf 'Opțiune necunoscută. Folosește --check pentru verificare fără modificări.\n' >&2; exit 2; fi
app_path=""
for candidate in /Applications/AirPodsMonitor.app "$HOME/Applications/AirPodsMonitor.app"; do
  if [[ -d "$candidate" ]]; then app_path="$candidate"; break; fi
done
if [[ -z "$app_path" ]]; then printf 'AirPodsMonitor nu este instalat în Applications. Nu s-a modificat nimic.\n'; exit 0; fi
if [[ -L "$app_path" ]]; then printf 'Calea aplicației este un link. Verifică manual în Finder; nu s-a modificat nimic.\n' >&2; exit 1; fi
bundle_id="$(/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' "$app_path/Contents/Info.plist" 2>/dev/null || true)"
if [[ "$bundle_id" != "ch.local.AirPodsMonitor" ]]; then printf 'Identitatea aplicației nu corespunde. Nu s-a modificat nimic.\n' >&2; exit 1; fi
printf 'Aplicație găsită: %s\nJurnalul, copiile locale, preferințele și datele iCloud vor fi păstrate de acest instrument.\n' "$app_path"
if [[ "$check_only" == true ]]; then printf 'Verificare încheiată. Nicio modificare.\n'; exit 0; fi
if /usr/bin/pgrep -x AirPodsMonitor >/dev/null 2>&1; then printf 'Închide aplicația înainte de dezinstalare și rulează din nou.\n' >&2; exit 1; fi
printf 'Pentru a muta numai aplicația în Coș, scrie DEZINSTALEAZA: '
IFS= read -r answer || exit 1
if [[ "$answer" != "DEZINSTALEAZA" ]]; then printf 'Operație anulată.\n'; exit 0; fi
trash_dir="$HOME/.Trash"
if [[ ! -d "$trash_dir" || -L "$trash_dir" ]]; then printf 'Coșul nu este disponibil. Folosește Finder → Mută în Coș.\n' >&2; exit 1; fi
trash_target="$trash_dir/AirPodsMonitor-$(/usr/bin/uuidgen).app"
if /bin/mv "$app_path" "$trash_target"; then
  printf 'Aplicația a fost mutată în Coș. Datele nu au fost șterse. Nu s-a golit Coșul.\nPentru reinstalare, folosește PKG-ul sau recuperează aplicația din Coș.\n'
else
  printf 'macOS nu a permis mutarea. Folosește Finder → Applications → AirPodsMonitor → Mută în Coș, cu autorizarea cerută de sistem.\n' >&2
  exit 1
fi
