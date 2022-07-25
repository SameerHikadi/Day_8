#!/bin/bash -x 

echo "Diece is thrown till any diece number count reaches 10"

n1=0
n2=0
n3=0
n4=0
n5=0
n6=0

throw=1


while [[ ($n1 -lt 10) && ($n2 -lt 10) && ($n3 -lt 10) && ($n4 -lt 10) && ($n5 -lt 10) && ($n6 -lt 10) ]]
do
		random=$(($RANDOM%6 + 1))
		diece[throw++]=$random

		case $random in
					1)
						n1=$(($n1 + 1))
					;;
					2)
						n2=$(($n2 + 1))
					;;
					3)
						n3=$(($n3 + 1))
					;;
					4)
						n4=$(($n4 + 1))
					;;
					5)
						n5=$(($n5 + 1))
					;;
					6)
						n6=$(($n6 + 1))
					;;
		esac

done



echo ${!diece[@]}
echo ${diece[@]}





