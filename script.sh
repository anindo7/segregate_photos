#!/bin/bash

for line in $(ls):
do
if [[ $line = *".jpg" ]]; then
name=${line/.jpg}
IFS=- read -r year month date <<< "$name"
mkdir -p $year/$month
mv $line $year/$month
fi
done
