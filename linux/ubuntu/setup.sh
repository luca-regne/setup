#!/bin/bash

### Colors ###
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'
GREEN='\033[0;32m'
BLINK='\e[5m'

## Update packages ##
sudo apt update

###########################
######### Basics ##########
###########################
printf "\n${RED}Install curl${YELLOW}\n"
sudo apt install curl 

printf "\n${RED}Installing wget ${YELLOW}\n"
sudo apt install wget -y

##########################
####### Essentials #######
##########################

## Google Chrome ##
printf "\n${RED}Installing Google Chrome${YELLOW}\n"
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output $HOME/Downloads/google-chrome-stable_current_amd64.deb
sudo dpkg -i $HOME/Downloads/google-chrome-stable_current_amd64.deb
rm $HOME/Downloads/google-chrome-stable_current_amd64.deb

### PowerShell ###
printf "\n${GREEN}Installing PowerShell${NC}\n"
sudo snap install powershell --classic

### Zsh ###
sudo apt-get install zsh -y
sudo usermod -s $(whereis zsh | cut -d ' ' -f 2) $(whoami)
exec zsh