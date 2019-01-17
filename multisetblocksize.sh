#!/bin/bash
echo "Preparing to format the following devices:"
echo ""
for var in "$@"
do
    echo "   $var"
done
echo ""
while true; do
    read -p "Do you wish to continue formatting? [y/n]" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please enter 'y' or 'n'";;
    esac
done
echo ""
for var in "$@"
do
    echo "formatting: $var"
    time ./setblocksize -b512 -t1200 $var
done