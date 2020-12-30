#!/bin/bash
echo '****************************'
declare -a arr
arr=( $(git whatchanged --since "20/12/2020" --until "28/12/2020" --oneline | awk '((NR % 2) == 0) {print $6}') )
alen=${#arr[@]}
#echo $alen
#echo $arr 
for (( i =0; i < alen; i++ ));
do 
echo "$(stat --format="%N     %B  %U   %Y" ${arr[$i]})"
done
