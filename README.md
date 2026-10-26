# AirPods Autonomy Lab

Aplicație SwiftUI pentru jurnalul testelor AirPods și redarea locală cu egalizator cu 10 benzi. Interfață română/franceză, tabele și grafice accesibile. Include proiect pentru Mac, iPhone și iPad; distribuția locală curentă este pentru Mac.

## Stare 1.5.3 — build 9

Build local Mac universal reușit. 107 teste raportate: 105 trecute, 2 omise, zero eșecuri. Testarea completă VoiceOver pe dispozitive reale nu este încă încheiată. Aplicația nu forțează firmware-ul și nu resetează de la distanță căștile.

## Instalare Mac

Instalatorul local va fi disponibil în Releases după publicare. Nu este notarizat Apple; CloudKit este dezactivat în distribuția locală. Nu ocoli protecțiile macOS fără să verifici sursa.

## Dezvoltare

Deschide AirPodsMonitor.xcodeproj în Xcode și selectează schema AirPodsMonitor-LocalMac pentru varianta locală. build-mac-installer.command generează pachetul și changelogul. Varianta semnată CloudKit necesită configurarea echipei și containerelor proprii.

## Actualizări

Verificarea online necesită un UpdateFeedURL HTTPS real în Info.plist. Canalul nu este încă publicat. Instalarea automată nu este implementată. Notele din releases generează CHANGELOG.md prin generate-changelog.py.

## Confidențialitate

Nu încărca jurnale personale, fișiere audio, backupuri, parole, certificate sau chei în acest depozit. Codul nu include conturi de utilizator pentru distribuție.
