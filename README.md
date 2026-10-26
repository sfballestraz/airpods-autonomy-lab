# AirPods Autonomy Lab

## Română

Aplicație gratuită pentru jurnalul testelor AirPods, redare muzicală și analiză. **Versiuni de test: Mac 1.5.5 și portabilă 0.3.**

[Descarcă ultima versiune verificată și citește limitele](https://github.com/sfballestraz/airpods-autonomy-lab/releases/tag/v1.5.5).

- Mac: alege fișierul DMG, copiază aplicația în Applications și pornește-o de acolo. Alternativ, folosește PKG. Închide aplicația înainte de actualizare.
- Dezinstalare Mac: închide aplicația, apoi mut-o din Applications în Coș. Datele sunt păstrate.
- Windows/Mac/Linux: extrage ZIP-ul portabil 0.3 și deschide index.html într-un browser modern. Nu este un instalator EXE și nu include toate funcțiile Mac. Exportă JSON înainte de mutare/dezinstalare; backupurile sunt separate de Mac.
- Feedback: folosește Probleme și sugestii pentru previzualizare și export local. [GitHub Issues](https://github.com/sfballestraz/airpods-autonomy-lab/issues) este public. Nu publica parole, date personale, fișiere audio sau jurnale private.

Interfață română/franceză/engleză; unele ecrane Mac nu sunt încă complet traduse în engleză. Build Mac universal și iOS generic reușite: 107 teste trecute, 2 omise, zero eșecuri. Testele portabile de date și interfață simulată au trecut. Testarea reală Windows/NVDA/Narrator, instalarea finală și validarea completă VoiceOver rămân de făcut.

Distribuția locală nu este notarizată Apple, nu activează CloudKit și nu are încă un canal online de actualizări configurat. Vezi VERIFICARE.txt și SHA256.txt din versiune. Pentru codul Mac actual, descarcă arhiva **airpods-autonomy-lab-1.5.5-surse.zip** din Assets. ZIP-ul portabil conține sursele HTML/CSS/JS. Fișierele vechi din rădăcina depozitului sunt istorice; folosește Assets ale versiunii recomandate.

### Prioritate: AirPods. Suport suplimentar: HomePod.

AirPods rămâne scopul principal: jurnal de autonomie, niveluri stânga/dreapta/carcasă când există o sursă disponibilă, firmware introdus/verificat separat, sesiuni de test și comparații. Valorile manuale ori estimate trebuie recunoscute ca atare. Aplicația nu forțează firmware-ul sau resetarea fizică.

HomePod este suplimentar: redare prin ieșirea AirPlay oferită de sistem, presetări EQ etichetate cu modelul și observații audio. HomePod nu este tratat ca un dispozitiv cu baterie. Alegerea modelului nu conectează boxa și nu confirmă compatibilitatea reală. Microfoanele HomePod nu sunt expuse de această aplicație. EQ-ul cu 10 benzi modifică numai fișierele redate în playerul aplicației, nu firmware-ul și nu alte aplicații.

Versiunea portabilă folosește ieșirea audio a browserului/sistemului, fără integrare nativă HomePod sau detectare automată AirPods. Nu folosi tabelul de consum al acesteia pentru HomePod. Validarea reală AirPods/HomePod și VoiceOver rămâne necesară.

Surse Apple: [AirPlay către HomePod de pe Mac](https://support.apple.com/en-ie/guide/mac-help/mchld7e543a0/mac), [actualizarea firmware AirPods](https://support.apple.com/en-us/106340).

## Français

Application gratuite pour les essais AirPods, la lecture musicale et l’analyse. Éditions de test : Mac 1.5.5 et portable 0.3. [Téléchargements et limites](https://github.com/sfballestraz/airpods-autonomy-lab/releases/tag/v1.5.5).

Mac : DMG ou PKG ; copiez dans Applications. Désinstallation via la Corbeille, données conservées. Portable : extrayez le ZIP et ouvrez index.html. Version limitée, pas d’EXE ; sauvegardes JSON distinctes. Exportez avant déplacement/désinstallation. Formulaire de retours avec aperçu et export local ; GitHub est public.

Roumain/français/anglais, traduction anglaise incomplète sur certaines vues Mac. Sans notarisation Apple, CloudKit ou canal de mises à jour configuré. Tests réels Windows/lecteurs d’écran et installation encore à effectuer. Les sources actuelles se trouvent dans les archives jointes à la version ; les fichiers de la racine sont historiques.

### Priorité : AirPods. Prise en charge complémentaire : HomePod.

AirPods : autonomie, batteries selon les sources disponibles, programme interne, journal et comparaisons. HomePod : lecture via la sortie AirPlay du système, préréglages EQ et observations audio. Pas de mesure de batterie HomePod, pas d’accès à ses microphones. Le choix du modèle ne connecte pas l’enceinte. L’EQ concerne uniquement le lecteur de l’app ; aucun forçage de programme interne ou de réinitialisation. L’édition portable utilise la sortie du navigateur/système, sans intégration native HomePod. Validation matérielle et VoiceOver encore à effectuer.

## English

Free app for AirPods test journals, local music playback and analysis. Test editions: Mac 1.5.5 and portable 0.3. [Downloads and limitations](https://github.com/sfballestraz/airpods-autonomy-lab/releases/tag/v1.5.5).

Mac: use DMG or PKG; copy to Applications. Quit and move to Trash to uninstall, preserving data. Portable: extract ZIP and open index.html in a modern browser. Limited edition, not an EXE; JSON backups are separate from Mac. Export before moving/uninstalling. Feedback has a local preview/export; GitHub is public.

Romanian/French/English; some Mac views remain incompletely translated. No Apple notarization, CloudKit or configured online update feed. Real Windows/screen-reader/installation testing remains pending. Current source code is in the release assets; root-level files are historical.

### AirPods first. HomePod as an additional audio device.

AirPods: battery autonomy, available battery readings, firmware references, test journals and comparisons. HomePod: playback through the system AirPlay output, labeled EQ presets and audio observations. No HomePod battery testing or microphone access. Selecting a model does not connect the speaker. EQ affects only this app’s player; firmware updates and physical resets are not forced. The portable edition uses browser/system audio output, without native HomePod integration. Real hardware and VoiceOver validation remain pending.

