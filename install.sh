#/bin/bash

echo "-----------------"
echo "  Install Start"
echo "-----------------"


echo "-----------------"
echo "     get Files   "
echo "-----------------"
mkdir /ccs/
cd /ccs/
wget https://kln-group.github.io/CacheClearScript/ccs.sh
chmod 775 https://kln-group.github.io/CacheClearScript/ccs.sh

cd /etc/systemd/system
wget https://kln-group.github.io/CacheClearScript/ccs.service
wget https://kln-group.github.io/CacheClearScript/ccs.timer

echo "-----------------"
echo " Regist  Service "
echo "-----------------"
systemctl enable ccs.service
systemctl enable ccs.timer
systemctl start ccs.service
systemctl start ccs.service

echo "-----------------"
echo "      Done       "
echo "-----------------"


