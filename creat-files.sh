#!/bin/bash
while true 
do
 echo "what do u want?"
 echo
 echo "1 : creat a bash file"
 echo "2 : creat a directory"
 echo "3 : creat txt file" 
 echo "4 : exit"
 read input
 case $input in
	1)
	  echo "how many file do u want?"
	  read c
	  while [ $c -gt 0 ]
          do
          echo "what is the file name"
	  read n
            touch $n.sh
            chmod +x $n.sh
            echo "#!/bin/bash" > $n.sh
            c=$(($c - 1))
          done
          echo
          echo "Done :)"
          echo
          ;;
       
        3)
          echo "how many file do u want?"
	  read c
	  while [ $c -gt 0 ]
          do
	  echo "what is the file name"
	  read n
            touch $n.txt
            c=$(($c - 1))
          done
          echo
          echo "Done :)"
          echo
          ;;

       2)
          echo "how many dir do u want?"
          read c
	  while [ $c -gt 0 ]
          do
            echo "what is the dir name"
	    read n
            mkdir $n
            c=$(($c - 1))
          done
          echo
          echo "Done :)"
          echo
          ;;

       4)
         echo "bye :("
	 exit
         ;;

       *) 
	       echo "u are donkey XD"
	      echo "go to hell :) "
	exit;;
 esac
done

