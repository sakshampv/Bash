#!/bin/bash
#File_Counter



if [ "$#" -eq "1" ];
  then 
   echo $(find $1 -maxdepth 1 -type f  | wc -l)
fi
if [ "$#" -eq "2" ];
  then
    echo $(ls -A "$1" | grep "$2" | wc -l) 
fi


if [ "$?" = "0" ];
  then
	:
else
  "$?"="-1"
  echo 1>&2
  exit -1
  
fi
