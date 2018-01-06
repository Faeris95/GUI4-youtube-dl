#!/usr/bin/bash
wget -q https://raw.githubusercontent.com/Faeris95/YoutubeToMp3-PythonGUI/master/mp3-Linux.py
if [ ! -d "/home/$USER/.local/bin" ];then
mkdir ~/.local/bin
fi
mv mp3-Linux.py ~/.local/bin/mp3
chmod +x ~/.local/bin/mp3
wget -q https://raw.githubusercontent.com/Faeris95/YoutubeToMp3-PythonGUI/master/mp3-icon.png
if [ ! -d "/home/$USER/.local/share/icons" ];then
mkdir ~/.local/share/icons
fi
mv mp3-icon.png ~/.local/share/icons/mp3py.png
if [ ! -d "/home/$USER/.local/share/applications" ];then
mkdir ~/.local/share/applications
fi
echo "[Desktop Entry]
Version=1.0
Name=YoutubeToMp3
GenericName=Downloader
Comment=Download video from YouTube to local mp3 file
Terminal=false
Exec=/home/$USER/.local/bin/mp3
Icon=mp3py
Type=Application
Categories=Network;Internet;" > ~/.local/share/applications/YoutubeToMp3.desktop
chmod +x ~/.local/share/applications/YoutubeToMp3.desktop
sudo pacman -Syu youtube-dl ffmpeg pyqt5-common python-pyqt5 python-pip && sudo pip install PyQt5
