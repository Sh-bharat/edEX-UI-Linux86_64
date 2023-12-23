#! /usr/bin/bash
sudo apt-get install figlet
sudo apt-get install libfuse2
figlet Sh-bharat


if [ -f "eDEX-UI-Linux-x86_64.AppImage" ]
then
echo "Directory Present"

else
echo "Directory not Present"
git clone https://github.com/Sh-bharat/edEX-UI-Linux86_64.git
fi


chmod a+x eDEX-UI-Linux-x86_64.AppImage
sudo sysctl kernel.unprivileged_userns_clone=1
sudo ./eDEX-UI-Linux-x86_64.AppImage --no-sandbox


