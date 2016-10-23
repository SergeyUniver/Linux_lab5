op[0]="-"
op[1]="+"
op[2]="/"
op[3]="*"
for i in {0..2}
do
	first=$RANDOM
	second=$RANDOM
	let "cs = $first ${op[i]} $second"
        echo EXPECTED: $first${op[i]}$second = $cs
	echo $first > /dev/first
	echo $second > /dev/second
	echo ${op[i]}  > /dev/operation
	res=$(cat /dev/result)
	echo GOT: $res
	if [[ "$res" -eq "$cs" ]]
	then 
		echo TRUE
	else 
		echo FALSE
	fi	
done
