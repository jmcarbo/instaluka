#!/bin/bash
echo "Installing terraform ..."
case $( uname -s ) in
  Linux) echo Linux && DF="https://dl.bintray.com/mitchellh/terraform/terraform_0.2.1_linux_amd64.zip";;
  Darwin) echo OSX && DF="https://dl.bintray.com/mitchellh/terraform/terraform_0.2.1_darwin_amd64.zip";;
  *)     echo other;;
esac

if [[ -d /usr/local/terraform ]]; then
  sudo rm -rf /usr/local/terraform
fi
sudo mkdir /usr/local/terraform
sudo wget -O /usr/local/terraform/terraform.zip $DF
sudo unzip -d /usr/local/terraform /usr/local/terraform/terraform.zip 


echo 'export PATH=$PATH:/usr/local/terraform' >>~/.profile

