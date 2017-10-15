#!/bin/sh

touch /ssh/config
chmod 0400 /ssh/config

touch /ssh/id_rsa
chmod 0400 /ssh/id_rsa

AUTOSSH_PIDFILE=/autossh.pid \
AUTOSSH_POLL=10 \
AUTOSSH_LOGLEVEL=0 \
AUTOSSH_LOGFILE=/dev/stdout \

# https://www.ssh.com/ssh/config/
# http://www.harding.motd.ca/autossh/README.txt

autossh \
 -M 0 \
 -N \
 -i /ssh/id_rsa \
 -f \
 -F /ssh/config \
 ${SSH_COMMAND}
 
 
