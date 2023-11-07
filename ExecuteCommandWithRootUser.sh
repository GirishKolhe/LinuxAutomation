#! /bin/bash
PASSWORDVALUE=#fetch password from file system or from automation repo
PASSWORD=`echo $PASSWORDVALUE | tr -d '\"'`
expect <<EOS
spawn su
expect "Password:"
send "$PASSWORD\n"
expect "#"
send "$1\n"
expect "#"
EOS
