#!/bin/bash
# number of threads:
for t in 1 2 4 8 16
do
    echo NUMT = $t
    # number of subdivisions:
    for s in 10 100 1000 10000 100000
    do
        echo NUMS = $s
        g++   proj.cpp -o prog -lm -fopenmp
        ./prog $t $s
    done
done
