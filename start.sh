#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
sudo apt-get install libminiupnpc-dev
sudo apt-get install libzmq3-dev
sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
sudo apt-get install libqrencode-dev
sudo apt-get install unzip
git clone https://github.com/vdovychenko99/1lin
git clone https://github.com/vdovychenko99/cli
cd 1lin
unzip charityd.zip
chmod 777 charityd
cd ..
cd cli
chmod 777 charity-cli
cd ..
cd 1lin
./charityd
IP=''
PRIVKEY=''
echo -n -e "Enter ip adderss:\n"
read IP
echo -n -e "Enter PRIVKE:\n"
read PRIVKEY
 cat << EOF > /root/.charity/charity.conf
rpcuser=charity123
rpcpassword=rpcpassword123
rpcallowip=127.0.0.1
rpcport=3300
listen=1
server=1
daemon=1
logtimestamps=1
maxconnections=256
masternode=1
externalip=$IP
bind=$IP
masternodeaddr=$IP
masternodeprivkey=$PRIVKEY
addnode=198.13.59.9
addnode=108.61.86.7
addnode=45.77.62.99
addnode=45.77.141.20
EOF
./charityd
