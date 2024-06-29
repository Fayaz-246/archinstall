#!/bin/sh

echo '________  ________  __      __  _____   '
echo '\_____  \ \______ \/  \    /  \/     \  '
echo ' /  / \  \ |    |  \   \/\/   /  \ /  \ '
echo '/   \_/.  \|    `   \        /    Y    \'
echo '\_____\ \_/_______  /\__/\  /\____|__  /'
echo '       \__>       \/      \/         \/ '


sudo pacman -Syu
sudo pacman -S xorg
sudo pacman -S git dunst nitrogen libx11 libxft libxinerama freetype2 fontconfig base-devel kitty bat thunar thunar-volman fastfetch ttf-mononoki-nerd

sleep 5

echo '_____.___.  _____ _____.___.'
echo '\__  |   | /  _  \\__  |   |'
echo ' /   |   |/  /_\  \/   |   |'
echo ' \____   /    |    \____   |'
echo ' / ______\____|__  / ______|'
echo ' \/              \/\/       '

git clone https://aur.archlinux.org/yay.git
sleep 1
cd yay
sleep 1
makepkg -si

sleep 1 
cd ~

echo ' ________.______________ '
echo '/  _____/|   \__    ___/'
echo '/   \  ___|   | |    |   '
echo '\    \_\  \   | |    |   '
echo ' \______  /___| |____|   '
echo '        \/                '

sleep 1
mkdir .suckless

git clone https://github.com/Fayaz-246/archinstall-dots.git 

cd archinstall-dots

mv dwm dwmblocks dmenu ~/.suckless/ 
cd ~
cd .suckless

sleep 2

cd dwm && sudo make clean install
cd ../dmenu && sudo make clean install
cd ../dwmblocks && sudo make clean install 

cd ~

mkdir .dwm

sleep 1

cd .dwm
touch autostart.sh
echo "#!/bin/bash" >> autostart.sh
echo "" >> autostart.sh
echo "nitrogen --restore &" >> autostart.sh  
echo "dunst &" >> autostart.sh 
echo "dwmblocks" >> autostart.sh

sleep 1

echo '________   ____________________________'
echo '\______ \  \_____  \__    ___/   _____/'
echo ' |    |  \  /   |   \|    |  \_____  \ '
echo ' |    `   \/    |    \    |  /        \'
echo '/_______  /\_______  /____| /_______  /'
echo '        \/         \/               \/ '

cd ~ 

cd .config

git clone https://github.com/Fayaz-246/archinstall-configs.git
cd archinstall-configs
mv kitty dunst ../

echo '___________ _______  ________  ___________________         _______________________________ ________   ___________________'
echo '\_   _____/ \      \ \______ \ \_   _____/\______ \        \______   \_   _____/\______   \\_____  \  \_____  \__    ___/'
echo ' |    __)_  /   |   \|    |  \ |    __)_  |    |  \        |       _/|    __)_  |    |  _/ /   |   \  /   |   \|    |   '
echo ' |        \/    |    \|    `   \|        \ |    `   \       |    |   \|        \ |    |   \/    |    \/    |    \    |   '
echo '/_______  /\____|__  /_______  /_______  //_______  /  /\   |____|_  /_______  / |______  /\_______  /\_______  /____|   '
echo '        \/         \/        \/        \/         \/   )/          \/        \/         \/         \/         \/         '


