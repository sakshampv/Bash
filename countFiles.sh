#!/bin/bash

var=0

INPUT="$1"
#OLDIFS=$IFS
#IFS="\t"
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 1; }
while read num sign
do
	if [ $sign = "+" ]
      then 
       var=$((var+num))
    fi

	if [ $sign = "-" ]
      then 
       var=$((var-num))
    fi
    
   if [ $sign = "*" ]
     then 
       var=$((var*num))
   fi

	if [ $sign = "/" ]
      then 
       var=$((var/num))
    fi
	
done < $INPUT
#IFS=$OLDIFS
echo $var
