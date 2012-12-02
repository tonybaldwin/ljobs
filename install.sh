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

ljpath="$HOME/.ljobs/"
editor="/usr/bin/vim"

echo "installing ljobs ... "
cp ljob $HOME/bin/ljob
chmod +x $HOME/bin/ljob

echo "Creating config files ... "
read -p "Where do you wish to keep your ljobs files? (default ~/.ljobs/ If you choose another directory, do not forget trailing slash.): " ljpath
read -p "What is your prefered editor? (default /usr/bin/vim): " editor
read -p "What is your default currency (default USD. Use three letter code, such as USD, EUR, GBP, BRL, CAD): " currency
echo "For future reference: you must be consistent in the use of a currency, or the math will result in errors.
ljob will not convert currency for you.
As such, you should convert payments, invoices, expenses in other currencies to your default.
For free currency conversions see www.xe.com"

echo "ljpath=$ljpath" >> $HOME/.ljobs.conf
echo "editor=$editor" >> $HOME/.ljobs.conf
echo "currency=$currency" >> $HOME/.ljobs.conf

echo "Installation complete."

ljob h
exit
