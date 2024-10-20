#!/bin/bash

echo

sudo ./clean.sh

echo
echo "Rebuilding package list..."
echo "--------------------------"

sudo rm -f Packages*
sudo dpkg-scanpackages -m ./debs /dev/null > Packages
sudo bzip2 -k Packages
sudo ./dpkg-scanpackages -m ./debians/ /dev/null > Packages

echo "--------------------------"
echo "Done."
echo
