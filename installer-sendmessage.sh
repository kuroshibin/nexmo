#!/bin/bash
apt-get update
pkg install unzip ruby boxes fonts-tlwg-garuda wget curl figlet toilet -y
cd $HOME
pkg install wget
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip -f master.zip
cd lolcat-master/bin
gem install lolcat
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
rm -rf ~/.bash_history && history -c
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
rm installer-sendmessage.sh
