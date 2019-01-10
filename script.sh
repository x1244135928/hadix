#!/bin/bash  
# 作为用例, 调用这个脚本至少需要10个参数, 比如:  
# ./script.sh 1 2 3 4 5 6 7 8 9 10  
NUM=10  

echo "The name of this script is $0"  

echo "The name of this script is `basename $0`"  
  
if [ -n "$1" ]              # 测试变量被引用.  

    then  
        
        echo "Parameter #1 is $1"  # 需要引用才能够转义"#"  

fi   
  
if [ -n "$2" ]  

    then  
        
        echo "Parameter #2 is $2"  

fi   
  
if [ -n "$3" ]  

    then  
        
        echo "Parameter #3 is $3"  

fi   
  
if [ -n "${10}" ]  # 大于$9的参数必须用{}括起来.  

    then  
    
        echo "Parameter #10 is ${10}"  

fi   

echo "-----------------------------------"  

echo "All the command_line parameters are: "$*""  

if [ $# -lt "$NUM" ]  

    then  
      
        echo "This script needs at least $NUM command_line arguments!"  

fi    

exit 0  
