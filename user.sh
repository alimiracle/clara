#!/bin/bash
source /etc/clara.sh
ip=`echo $SSH_CONNECTION | cut -d " " -f 1`
if [ "$PAM_TYPE" != "close_session" ]; then
echo """
new user logon
username:
$USER
IP:
$ip
""" | mutt -s "User logon" $email
fi

