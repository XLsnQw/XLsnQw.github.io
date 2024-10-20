#!/bin/bash

echo "Cleaning..."

echo "removing .DS_Store files"
sudo find . -name '.DS_Store' -delete

echo "done."
