#!/bin/bash
#
# Made by: Luke Seal
# Made on: 06-08-2025
# Last updated: 06-08-2025
# Contact: lseal8125@gmail.com
#
#This makes debtap run with one script
debfile=$1

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

mkdir debtap-install
mv $1 debtap-install
cd debtap-install

sudo debtap -u
sudo debtap $1
sudo pacman -U *.pkg.tar.zst

read -p "Cleanup install? **THIS WILL REMOVE THE .deb FILE FROM YOUR SYSTEM** (y/n): " cleanup
if [[ "$cleanup" == "y" || "$cleanup" == "Y" ]]; then
	cd ..
	rm -rf debtap-install
fi
exit
