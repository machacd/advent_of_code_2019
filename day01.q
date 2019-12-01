hd:raze  "/" ,/: 2#1_"/" vs (string first `$system"pwd") /home dir
testset:0b
inp:$[testset;
 26,10,18;
 "I"$ read0 `$":",hd,"/advent_of_code_2019/inputs/input01a.txt"]

calculate_fuel:{
 r:0|div[x;3] - 2
 }

s:sum fuel:calculate_fuel each inp

/ part 2

/too lazy to not use the global variable
add_fuel:{[s]
 s:s+sum fuel::0N!calculate_fuel fuel; 
 s
 }

(add_fuel/) s

