#!/bin/sh

#don't you hate making new environments and directories?
#this does it in one step
# recursively adds a whole path, changes permissions and user in one command

mkdir -p $3
super=$(echo $3 | cut -f 1 -d "/")
chown -R $1:$1 $super
chmod -R $2 $super
echo "usage chmo <user> <perms> <path>"
echo "example: chmo ezra 664 /home/ezra"

