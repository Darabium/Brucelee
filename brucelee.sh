#!/bin/bash

if ! command -v hydra &> /dev/null; then
    echo "Hydra not found. Installing..."
    
   
    if [ -f /etc/debian_version ]; then
        sudo apt-get update
        sudo apt-get install -y hydra
    elif [ -f /etc/redhat-release ] || [ -f /etc/centos-release ]; then
        sudo yum install -y hydra
    elif [ -f /etc/arch-release ]; then
        sudo pacman -Sy --noconfirm hydra
    elif [ -f /etc/fedora-release ]; then
        sudo dnf install -y hydra
    else
        echo "Your operating system is not supported. Please install Hydra manually."
        exit 1
    fi
    
    echo "Hydra installed successfully."
else
    echo "Hydra is pre-installed."
fi


echo "input list IP Targets(ex:target.txt):"
read Target
echo "input Port Service(ex:22):"
read PortService
echo "input Protocol Service(ex:SSH):"
read ProtocolService
echo "input List UserName(.TXT):"
read UserName
echo "input List PassWord(.TXT):"
read PassWord
echo "enter file name(ex:Sussces.txt):"
read FileName

#nmap -iL $Target -p $PortService --open | grep report | cut -d " " -f 5 > filenmap.txt
#hydra -L $UserName -P $PassWord $ProtocolService filenmap.txt | grep host| cut -d " " -f 3 > $FileName

eche "See You Later* Darabium "

