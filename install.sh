#!/bin/bash

sudo apt-get clean
sudo apt-get update
sudo apt-get install mono-complete fsharp -y
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu trusty-getdeb games" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install nuget -y
yes | certmgr -ssl https://go.microsoft.com
yes | certmgr -ssl https://nugetgallery.blob.core.windows.net
yes | certmgr -ssl https://nuget.org
nuget install fscheck
cp FsCheck*/lib/net452/FsCheck.dll /usr/lib/mono/4.5/