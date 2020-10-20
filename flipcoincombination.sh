#!/bin/bash 
echo "How many times would you like to  ? :"
read n
t=$n
count=0
while [ $n -ne 0 ]
do
let=1
check=0

    while [ $let -ne 0 ]
    do
        a=$RANDOM
        b=`expr $a % 2`
        if [ $b -eq 0 ]
        then
            printf "Heads\t"
        else
            printf "Tails\t"
            check=1
        fi
        let=`expr $let - 1`

    done
if [ $check -eq 0 ]
then
count=$(( $count + 1 ))
fi
echo
n=`expr $n - 1`
done

p=$(( $count * 100 ))
p=$(echo $p $t|awk '{printf "%f",$1/$2}')
echo
echo Heads and Heads : $p percent
echo Others : $(echo 100 $p|awk '{printf "%f",$1-$2}') percent

