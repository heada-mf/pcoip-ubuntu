#!/bin/bash

#Script to install the Teradici PCoIP client on Ubuntu systems
#Script must be run as sudo

echo 'Downloading Repository Deb File
wget -O teradici-repo-latest.deb https://downloads.teradici.com/ubuntu/teradici-repo-$(lsb_release -cs)-latest.deb

echo 'Installing the Teradici Repository'
apt install ./teradici-repo-latest.deb -y

echo 'Updating repository list and installing PCoIP Client'
apt update -y
apt install pcoip-client -y