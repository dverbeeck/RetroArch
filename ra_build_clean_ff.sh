#!/bin/bash

git pull 
CFLAGS="-I/usr/include/ffmpeg/" PKG_CONFIG_PATH=/usr/lib/pkgconfig ./configure && gmake clean && CFLAGS="-I/usr/include/ffmpeg/" PKG_CONFIG_PATH=/usr/lib/pkgconfig gmake 

if [ -f "retroarch" ];
then
echo "Build Success! Moving to /usr/bin"
sudo mv retroarch /usr/bin
else
echo "Build Failed! FUCK OFF"
fi

