#!/bin/bash
abults=0
minors=0

files_list=(./*.txt)
for file in "${files_list[@]}"
do
     IFS=$'\n' lines=($(cat "$file"))
     for line in "${lines[@]}"
     do
          age=$(echo "$line" | cut -d: -f4)
          if [[ $age -ge 18 ]]
          then
               ((abults++))
          else
               ((minors++))
          fi
     done
done

echo "Cov:$abults"
echo "Nev:$minors"
