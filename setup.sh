#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Updating system..."
pkg update && pkg upgrade -y

echo "[*] Installing essential tools..."
pkg install wget proot proot-distro git tar -y

echo "[*] Setting up Ubuntu and Metasploit (This will take a while)..."
proot-distro install ubuntu
proot-distro login ubuntu -- bash -c "apt update && apt upgrade -y && apt install curl -y && curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall"

echo "[*] Downloading and setting up Ngrok..."
cd ~
rm -f ngrok-v3-stable-linux-arm64.tgz* # Cleanup old files
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz
tar -xvzf ngrok-v3-stable-linux-arm64.tgz
rm ngrok-v3-stable-linux-arm64.tgz
chmod +x ngrok

echo "[*] Setting up permissions..."
termux-setup-storage

echo "[+] Setup Complete! Use './ngrok config add-authtoken [TOKEN]' to start."
