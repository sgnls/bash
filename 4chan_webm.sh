#!/bin/bash

mkdir -p $PWD/src
mkdir -p $PWD/groups

read -p "URL : " url
read -p "Group : " gn

echo "Downloading source..."
curl -s $url -o $PWD/src/$gn >/dev/null 2>&1

echo "Creating group..."
mkdir -p $PWD/groups/$gn

echo "Downloading files..."
for i in $(cat $PWD/src/$gn | grep -oP '/gif/[^"]*.webm' | uniq); do wget -q --show-progress -P $PWD/groups/$gn http://i.4cdn.org/$i; done
