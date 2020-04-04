#!/bin/bash
#================================================
#   O.S.      : Gnu Linux                       =
#   Author    : Cristian Pozzessere < ilnanny > =
#   D.A.Page  : http://ilnanny.deviantart.com   =
#   Github    : https://github.com/ilnanny      =
#================================================
#_______________________  Colori ansi
cyan="\033[0;36m"
red="\033[0;31m"
blue="\033[1;34m"
green="\033[1;32m"
yellow="\033[1;33m"
nc="\033[0m"
clear
#
#______________________  Imposta superuser
set -o errexit
[[ $(whoami) == 'root' ]] || exec sudo su -c $0 root
#______________________________________________________
#  Creo una copia di backup dei files originali e
#  copio il tema dalla cartella selezionata.

mv /etc/lxdm/lxdm.conf  /etc/lxdm/lxdm.conf.bk

cp -a -r ../Industrial-remix/etc-lxdm/lxdm.conf /etc/lxdm/

mv /usr/share/lxdm/config.ui /usr/share/lxdm/config.ui.bk

cp -a -r ../Industrial-remix/usr-share-lxdm/config.ui /usr/share/lxdm/config.ui

cp -a -r ../Industrial-remix/usr-share-lxdm-themes/Industrial-remix  /usr/share/lxdm/themes/

echo " Tema installato con Successo !"
sleep 2
exit 0



