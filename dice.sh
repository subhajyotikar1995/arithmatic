#! /bin/bash
dice1=$((RANDOM%6+1))
dice2=$((RANDOM%6+1))
rolls=0
sum=0

while(true)
do
	dice1=$((RANDOM%6+1))
	dice2=$((RANDOM%6+1))
	if [ $dice1 -eq 6 -a $dice2 -eq 6 ]
	then
		break
	elif [ $dice1 -lt 6 -a $dice2 -lt 6 ]
	then
		rolls=$(( $rolls + 1 ))
		sum=$(( $sum + $dice1 + $dice2 ))
	fi
done

echo "Sum of two dice= $sum"
echo "Total count of Rolls= $rolls"
