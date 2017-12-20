#!/bin/bash

grep "$2" "$1" >> new.txt


INPUT=new.txt
OLDIFS=$IFS
IFS=":"
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 1; }
while read flname dob ssn tel status pro
do
	echo "$status"
	
done < $INPUT
IFS=$OLDIFS
rm new.txt
