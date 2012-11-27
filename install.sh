#!/bin/bash

##############################################################
# installation script for ljobs                              #
# language jobs management in bash by tony baldwin           #
# http://tonyb.us/ljobs                                      #
# released according to the terms of the GNU GPL v.3 or later#
##############################################################

if [ != "$HOME/bin/" ]; then
	mkdir $HOME/bin/
	$PATH=$PATH:/$HOME/bin/
	export PATH
fi

ljpath=$HOME/.ljobs
editor="/usr/bin/vim"

echo "installing ljobs ... "
cp ljob $HOME/bin/ljob
chmod +x $HOME/bin/ljob

echo "Creating config files ... "
read -p "Where do you wish to keep your ljobs files? (default ~/.ljobs): " ljpath
read -p "What is your prefered editor? (default /usr/bin/vim): " editor

echo "ljpath=$ljpath" >> $HOME/.ljobs.conf
echo "editor=$editor" >> $HOME/.ljobs.conf

echo "Installation complete."

ljob h
exit
