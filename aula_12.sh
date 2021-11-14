#!/bin/bash

PPA_PIPER_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"
PPA_LUTRIS="ppa:lutris-team/lutris"
URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_SIMPLE_NOTE="https:///github.com/Automattic/simplenote-electron/releases/download/v1.8.0/Simplenote-linux-1.8.0-amd64.deb"
DIRETORIO_DOWNLOAD_PROGRAMAS="$HOME/Downloads/programas"
PROGRAMAS_PARA_INSTALAR_APT=(
    snapd
    windff
    guvcview
    virtualbox
)

remover_locks () {
  sudo rm /var/lib/dpkg/lock-frontend
  sudo rm /var/cache/apt/archives/lock
  exit 127
}

adicionar_arquitetura_i386 () {
  sudo dpkg --add-architecture i386
}

atualizar_repositorios () {
  sudo apt update
}

adicionar_ppas () {
  sudo apt-add-repository "$PPA_PIPER_LIBRATBAG" -y
  sudo add-apt-repository "$PPA_LUTRIS" -y
}

baixar_pacotes_debs () {
    [[  !  -d "$DIRETORIO_DOWNLOAD_PROGRAMAS"  ]]  && mkdir  "$DIRETORIO_DOWNLOAD_PROGRAMAS"
    wget "$URL_GOOGLE_CHROME" -P "$DIRETORIO_DOWNLOAD_PROGRAMAS"
    wget "$URL_SIMPLE_NOTE"   -P "$DIRETORIO_DOWNLOAD_PROGRAMAS"
 }

 instalar_pacotes_debs () {
    sudo dpkg -i $DIRETORIO_DOWNLOAD_PROGRAMAS/*.deb
    sudo apt -f install -y
 }

instalar_pacotes_do_apt () {
    for programa in ${PROGRAMAS_PARA_INSTALAR_APT[0]};  do
        sudo apt install $programa -y
    done
}

instalar_pacotes_do_snap () {
  sudo snap install spotify
}

upgrade_e_limpa_sistema () {
  sudo apt dist-upgrade -y
  sudo apt autoclean
  sudo apt autoremove -y
}

# remover_locks
# adicionar_arquitetura_i386
# adicionar_ppas
# atualizar_repositorios
#baixar_pacotes_debs
# instalar_pacotes_debs
instalar_pacotes_do_apt
# instalar_pacotes_do_snap
# upgrade_e_limpa_sistema
