#!/bin/bash

echo"=========================================================================="
echo "             **************Shell Script Assignment********               "
echo"=========================================================================="


echo "Welcome to my first mini Shell script project,by user : $(whoami)"

echo "                 "
echo "Today is : "
date | awk '{print $3 "-" $2 "-" $6}'

echo "                 "
echo "Time is : "
date | awk '{print $4}'

echo "**********************************************"

echo "server uptime is :"
uptime

echo "Top $1 Last Logins"
last -a | head -$1

echo  "**********************************************"

echo "My Server Disk Utilization :"
df -h | xargs | awk '{print "Free Disk Space is : " $11}'
df -h  | xargs | awk '{print "Total Disk Space is : " $9}'

echo  "**************************************************"

echo "My Server RAM(Memory)Utilization : "
free -h | xargs | awk '{print "Free Memory is : "$10}'
free -h | xargs | awk '{print "Total Memory is : "$8}'

echo  "**************************************************"
echo "Top $2 CPU Processes running :"
top -b | head -$2

echo "*****************Prod*******************************"
