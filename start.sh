#!/bin/bash
git clone https://github.com/vdovychenko99/4lin.git
cd ./4lin/
chmod 777 charityd
chmod 777 charity-cli
./charityd
nano /root/.charity/charity.conf
./charityd
