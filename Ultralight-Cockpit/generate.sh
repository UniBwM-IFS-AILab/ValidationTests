#!/bin/bash

numberAerodromes=(100 200 300 400 500 600 700 800 900 1000 2000 3000 4000 5000)

for nb in "${numberAerodromes[@]}" 
do
	PREF=$(printf "%02d" $nb)
	echo $nb
	python3 prob_instance_generator.py --num_landingSpots $nb problems/pfile$PREF.hddl
done
