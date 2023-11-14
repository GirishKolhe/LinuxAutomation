#! /bin/bash

#expect :- waits till character or sequene of characters
#send :- send chars

PASSWORDVALUE=#fetch password from file system or from automation repo
PASSWORD=`echo $PASSWORDVALUE`
expect <<EOS
spawn su
expect "Password:"
send "$PASSWORD\n"
expect "#"
send "$1\n"
expect "#"
EOS
