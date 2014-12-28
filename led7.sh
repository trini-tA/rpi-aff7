#!/bin/bash

# Variable
TIMESHOW=1

# init Gpio mode
gpio mode 0 out

gpio mode 5 out		# D 
gpio mode 7 out		# C
gpio mode 1 out		# B
gpio mode 4 out		# A

# init afficheur
gpio write 0 1

for i in `seq 1 20`;
do 

	echo $i
	#	sh ../bash/google_tts.sh Boucle $i	

	gpio write 5 0 && gpio write 7 0 && gpio write 1 0 && gpio write 4 0	# 0
	sleep $TIMESHOW
	gpio write 5 0 && gpio write 7 0 && gpio write 1 0 && gpio write 4 1	# 1
	sleep $TIMESHOW
	gpio write 5 0 && gpio write 7 0 && gpio write 1 1 && gpio write 4 0	# 2
	sleep $TIMESHOW
	gpio write 5 0 && gpio write 7 0 && gpio write 1 1 && gpio write 4 1	# 3
	sleep $TIMESHOW
	
	gpio write 5 0 && gpio write 7 1 && gpio write 1 0 && gpio write 4 0	# 4
	sleep $TIMESHOW
	gpio write 5 0 && gpio write 7 1 && gpio write 1 0 && gpio write 4 1	# 5
	sleep $TIMESHOW
	gpio write 5 0 && gpio write 7 1 && gpio write 1 1 && gpio write 4 0	# 6
	sleep $TIMESHOW
	gpio write 5 0 && gpio write 7 1 && gpio write 1 1 && gpio write 4 1	# 7
	sleep $TIMESHOW
	
	gpio write 5 1 && gpio write 7 0 && gpio write 1 0 && gpio write 4 0	# 8
	sleep $TIMESHOW
	gpio write 5 1 && gpio write 7 0 && gpio write 1 0 && gpio write 4 1	# 9
	sleep $TIMESHOW
done
gpio write 5 1 && gpio write 7 1 && gpio write 1 1 && gpio write 4 1	# ****
