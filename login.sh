#!/bin/bash
# login page
clear
x=1;
while [ $x=1 ] ;
do
  echo "Welcome to Bodian-Script Dane"
  echo "========================"
  read -p 'username: ' username
  read -sp 'password: ' password
  if [ "$username" == "haydane" ] && [ "$password" == "toor" ] ;
  then
    clear
    y=1
    echo "Loading..................."
    sleep 1
    clear 
    while [ $y == 1 ]; 
    clear
    echo "[1]. guess number"
    echo "[2]. guess character"
    echo
    do
      read -p "Enter your choice or press [Q/q] to exit: " wish
    case $wish in
      1)
        clear
        read -p "guess number from [1-2]: " guess
        rand=$(( (RANDOM%2) + 1 )) 
        echo "random number is $rand"
        if [ '$rand' == '$guess' ]; 
        then 
          clear
          echo "right"
          echo 
          read -p "do you wanna play again? press [y/Y] or q to exit: " YesNO
          case $YesNO in 
          y)
            y=1
          ;;
          q) exit ;;
          *) echo "you enter wrong key! try again" y=1 ;;
          esac
        else
          echo "wrong"
          sleep 2
          echo 
          read -p "do you wanna play again? press [y/Y] or q to exit: " YesNO
          case $YesNO in 
          y)
            y=1
          ;;
          q) y=0 ;;
          *) echo "you enter wrong key! try again" y=1 ;;
          esac
        fi
        ;;
      2) 
        echo "exiting................."
        sleep 3
        x=0;
        ;;
      q) exit ;;

    esac
    done
  else
    clear
    echo "failed" 
  fi
done
