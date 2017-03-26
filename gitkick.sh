#!/bin/sh

# check dir
GITDIR=kick-test-rep
if [ -e $GITDIR ]; then
	echo "delete {$GITDIR}"
	rm -rf $GITDIR
fi

# get dir from git
echo "git clone"
git clone https://github.com/tfukami/kick-test-rep.git

# exec python
cd kick-test-rep
python show_message.py

cd ../
