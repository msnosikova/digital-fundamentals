#!/bin/bash
young=200
old=0
yang1=""
old1=""

files_list=(./*.txt)

for file in "${files_list[@]}"
do
   IFS=$'\n' lines=($(cat "$file"))
   for line in "${lines[@]}"
   do
      age=$(echo "$line" | cut -d: -f4)
      if [[ $age -lt $young ]]
      then
           young=$age
           yang1=$line
      fi
      if [[ $age -gt $old ]]
      then
           old=$age
           old1=$line
      fi
    done
done
echo "yang: $yang1"
echo "old1: $old1"
