#/bin/bash

echo "-----------------"
echo "  Install Start"
echo "-----------------"


echo "-----------------"
echo "     get Files   "
echo "-----------------"
mkdir /ccs/
cd /ccs/
wget url/ccs.sh
chmod 775 ccs.sh

cd /etc/systemd/system
wget url/ccs.service
wget url/ccs.timer

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


