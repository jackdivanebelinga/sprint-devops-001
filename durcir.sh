#!/usr/bin/env bash
# Durcissement de mon serveur — défi-001, Promo 001
# Usage : sudo bash durcir.sh
set -euo pipefail

# 1. Le pare-feu, dans le bon ordre
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw default deny incoming
sudo ufw enable
# 2. SSH, mot de passe et root
sudo nano /etc/ss/ssh_config
#Vérification sudo sshd -T | grep -iE "passwordauthentication|permitrootlogin"
# 3. Les mises à jour
sudo apt update
# 4. Vérification finale
sudo ufw status verbose
