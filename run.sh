#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Initializing..."
echo

# For avoid errors
cd $HOME
mkdir .termux

sleep 2

echo
echo "[*] Installing setup..."
echo

sleep 2

apt update && apt upgrade -y
apt install curl -y
curl -LO https://raw.githubusercontent.com/41Team/Add_Keys/master/termux.properties

echo
echo "[*] Moving file..."
echo

sleep 2

mv termux.properties $HOME/.termux/

echo "[*] Finalizing installation"

cd $HOME && rm -rf run.sh

echo "[*] All setup finished! Reopen termux to see the changes!"

