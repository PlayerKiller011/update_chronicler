#!/bin/bash
mkdir ~/.chronicler_update_temp

download_url=$(curl -s "https://api.github.com/repos/mak-kirkland/chronicler/releases/latest" | python3 ./update_chronicler.py)
wget -O ~/.chronicler_update_temp/update.deb $download_url
sudo dpkg --install ~/.chronicler_update_temp/update.deb

rm -r ~/.chronicler_update_temp
