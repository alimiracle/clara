clara: server Backup and Notifications bot

clara is bot use to Backup all your databases and your websites and server configurations
and send Notifications to the admin when something happens in the server

Backups types:

- weekly Backup to all your websites

- weekly Backup to all your data bases

- weekly Backup to all server configuration

the Backups send to your email or to your ftp server

Notifications Types:


- HIGH MEMORY (Possible memory leak)

- root partition  free space is critically low

- user login
 
- the server CPU   Load average is greater than 0.9

-the server Internet Connection is lost (send it useing sms)


- web Server error

the Notifications send to your email

Install :

Download the program useing git

git clone https://notabug.org/alimiracle/clara
cd clara

to config the programme 

open config.sh

nano config.sh

replace "yourmail" with your email, "root" with your database server username, "mypas" with your database server password, , "0000" with your phone number, "12431"  with  your net gateway

then save the file

to use ftp Instead of mail

open config.sh
make use_ftp yes

replace "yourftpuser" with your ftp username, "yourftppas" with your ftp password, "server" with your ftp server

then save the file


to run the bot
- 
install mutt, postfix 

then type as root
chmod +x run

./run

lost Internet Connection Notification is  Disabled by default

to use it you must Enable it

furst you must install smstools
and you must have phone to use it as a Modem

There are quite a few GSM modems to choose from. You are looking for one with a USB interface and a removable SIM. GSM modems that use wifi to connect to computers won’t work. You need to be able to remove the SIM because most mobile data SIMs won’t allow you to send or receive SMS messages. The other big requirement is Linux drivers, and Google is really your friend here. The main thing to watch out for is manufacturers changing the chipsets in minor product revisions.
We ended up going with an old Vodafone modem using a Huawei 
chipset. The exact model I used is HUAWEi Mobile Connect Model 

E169 It shows up in Linux like this:

ID 12d1:1001 Huawei Technologies Co., Ltd. E169/E620/E800 HSDPA 
Modem

ID 12d1:1001 Huawei Technologies Co., Ltd. E169/E620/E800 HSDPA 
Modem

then open file loop

nano loop
and unComment
#./sms line

then save the file

have fun and be free

ali miracle