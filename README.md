SoftetherAutoInstall
====================
Do you think that installing Softether VPN Server for linux manually is complicating? well, me too =)

So, i bring the manual version of installing into Automated installer with sh scripting

and how this thing works? well, this script wget the Softether installer, installing the build tools (Development Tools on CentOS) and build it.

(TOS is can't skipped, because that's the agreement from the Softether that can't be skipped)

FAQ:

1. How i can install the Local bridge on the Softether? / 
well, i'll upload the Local bridge script soon. =)

2. Only debian? asdfghjkl -_- / 
Maybe for future i'll create script for CentOS (i don't have CentOS Server for now, maybe next time)
but here some point that you can try to port Debian to CentOS 
 - use yum instead apt-get (because centos not using apt-get)
 - modify the /etc/init.d/vpnserver files
 - {add some important stuff here}
 
3. Thanks sir / 
You're welcome =3