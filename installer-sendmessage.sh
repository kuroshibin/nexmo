#!/bin/bash
apt-get update
pkg install unzip
pkg install ruby
pkg install boxes
pkg install fonts-tlwg-garuda
pkg install wget
pkg install curl
pkg install figlet
pkg install toilet -y
cd $HOME
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip -f master.zip
cd lolcat-master/bin
gem install lolcat
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
rm -rf ~/.bash_history && history -c
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
rm installer-sendmessage.sh
