# Générateur de certificat de déplacement permettant de générer le PDF (QR code compris) en live 

* Les paramètres principaux sont accessibles via l'URL permettant de générer le certificat en live
* Installer l'application sur sa propre instance pour des raisons de confidentialité (les logs du serveur hôte conservent les URL consultées)
* PDF généré "25 minutes avant"

## Développer

### Installer le projet

```console
git clone https://github.com/OlivierData/live-attestation-fr-q4-2020.git
cd live-attestation-fr-q4-2020
npm i
npm start
```

## Générer et tester le code de production

### Tester le code de production en local

#### Générer le code de production pour tester que le build fonctionne en entier

```console
npm run build:dev
```

#### Tester le code de production en local

```console
npx serve dist
```

Et visiter http://localhost:5000

Le code à déployer sera le contenu du dossier `dist`

## Crédits

Ce projet a été réalisé à partir d'un fork du dépôt [deplacement-covid-19](https://github.com/nesk/deplacement-covid-19) de lui-même réalisé à partir d'un fork du dépôt [covid-19-certificate](https://github.com/nesk/covid-19-certificate) de [Johann Pardanaud](https://github.com/nesk).

Les projets open source suivants ont été utilisés pour le développement de ce
service :

- [PDF-LIB](https://pdf-lib.js.org/)
- [qrcode](https://github.com/soldair/node-qrcode)
- [Bootstrap](https://getbootstrap.com/)
- [Font Awesome](https://fontawesome.com/license)
