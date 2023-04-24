#!/bin/bash
#
# Script to install popular Kali Linux security tools on Ubuntu

# Add Kali Linux repository to sources.list.d
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list.d/kali.list

# Import Kali Linux GPG key
wget https://archive.kali.org/archive-key.asc
sudo apt-key add archive-key.asc

# Update package lists
sudo apt-get update

# Install popular security tools
sudo apt-get install nmap sqlmap john aircrack-ng metasploit-framework hydra wireshark nikto dirb wpscan burpsuite openvas enum4linux netcat

# Clean up
rm archive-key.asc
