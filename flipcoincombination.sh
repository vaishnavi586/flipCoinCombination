a=$((RANDOM%2))
if [ $a -eq 0 ]
then
    tails=$(($tails+1))
    echo T
else
    heads=$(($heads+1))
    echo H
fi
