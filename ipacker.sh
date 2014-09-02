#!/bin/bash
APP=packer
echo "Installing packer ..."
case $( uname -s ) in
  Linux) echo Linux && DF="https://dl.bintray.com/mitchellh/packer/0.6.1_linux_amd64.zip";;
  Darwin) echo OSX && DF="https://dl.bintray.com/mitchellh/packer/0.6.1_darwin_amd64.zip";;
  *)     echo other;;
esac

if [[ -d "/usr/local/$APP" ]]; then
  sudo rm -rf "/usr/local/$APP"
fi
sudo mkdir "/usr/local/$APP"
sudo wget -O "/usr/local/$APP/$APP.zip" $DF
sudo unzip -d "/usr/local/$APP" /usr/local/$APP/$APP.zip 


echo 'export PATH=$PATH:/usr/local/'$APP >>~/.profile

