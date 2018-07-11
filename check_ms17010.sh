#!/bin/bash

#------------------------------------
#-- Script search ms17010
#------------------------------------

#Get local network 
IP=$(ip addr show dev eth0 | cut -f6 -d" " | sed '1,2d' | sed '2,8d')

# Run scan 
# Dependence: $ wget https://svn.nmap.org/nmap/scripts/smb-vuln-ms17-010.nse
nmap -sS -p445 --open --max-hostgroup 3 --script='smb-vuln-ms17-010.nse' $IP > Result_ms17010.txt
