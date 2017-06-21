#-------------------------------------------------------
#Softether Auto Install Script
#For OS Centos
#
#Script Coded by Syahz86
#https://github.com/syahz86/SoftetherAutoInstall
#
#Script Based from tutorial by lincolin.hk
#
#Good Luck!
#-------------------------------------------------------
#Updating Repositories and Installing Development Packages
yum update -y
yum install build-essential -y
#Get the Softether Packages via wget and Save it into /root
cd /root
wget http://www.softether-download.com/files/softether/v4.10-9473-beta-2014.07.12-tree/Linux/SoftEther_VPN_Server/64bit_-_Intel_x64_or_AMD64/softether-vpnserver-v4.10-9473-beta-2014.07.12-linux-x64-64bit.tar.gz
#Unpack into /usr/local/
tar -xvzf softether-vpnserver-v4.10-9473-beta-2014.07.12-linux-x64-64bit.tar.gz -C /usr/local/
#Change permissions and install
chmod -R 744 /usr/local/vpnserver
cd /usr/local/vpnserver
make
#Create init start/stop script
cd /root
wget https://raw.githubusercontent.com/syahz86/SoftetherAutoInstall/master/misc/vpnserver-centos.sh --no-check-certificate
mv vpnserver-centos.sh /etc/init.d/vpnserver
cd /etc/init.d
#Now server can be started and added to autostart
chmod 755 /etc/init.d/vpnserver
/etc/init.d/vpnserver start
chkconfig vpnserver on
echo "-----------------------------------------------------"
echo "Install finish!"
echo "check this step to check are installer is working properly"
echo "1. vpnserver and vpncmd is on /usr/local/vpnserver"
echo "2. /etc/init.d/vpnserver start can executed"
echo -e "if vpnserver can start, run \e[1;33;44m./vpncmd\e[0m for VPN configuration"
echo "------------------------------------------------------"
exit
