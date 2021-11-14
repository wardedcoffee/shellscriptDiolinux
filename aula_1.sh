#!/bin/bash

PPA_PIPER_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"
PPA_LUTRIS="ppa:lutris-team/lutris"

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_SIMPLE_NOTE="https:///github.com/Automattic/simplenote-electron/releases/download/v1.8.0/Simplenote-linux-1.8.0-amd64.deb"

DIRETORIO_DOWNLOAD_PROGRAMAS="$HOME/Downloads/programas"

# sudo rm /var/lib/dpkg/lock-frontend
# sudo rm /var/cache/apt/archives/lock
# sudo dpkg --add-architecture i386
# sudo apt update -y
sudo apt-add-repository "$PPA_PIPER_LIBRATBAG" -y
sudo add-apt-repository "$PPA_LUTRIS" -y
sudo apt update -y
mkdir "$DIRETORIO_DOWNLOAD_PROGRAMAS"
wget "$URL_GOOGLE_CHROME" -P "$DIRETORIO_DOWNLOAD_PROGRAMAS"
wget "$URL_SIMPLE_NOTE"   -P "$DIRETORIO_DOWNLOAD_PROGRAMAS"
# sudo dpkg -i /home/marcos/Downloads/programas/*.deb
# sudo apt -f install -y
# sudo apt install snapd -y
# sudo apt install windff -y
# sudo apt install guvcview -y
# sudo apt install virtualbox -y
# sudo snap install spotify
# sudo apt update && sudo apt dist-upgrade -y
# sudo apt autoclean
# sudo apt autoremove -y
