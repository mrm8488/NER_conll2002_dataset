#! /bin/bash
touch filter_test.txt
touch filter_train.txt
touch filter_dev.txt
touch temp.txt

while read line
do

    if [ "$line" == "- Fg O" ]
        then
            r=$(( $RANDOM % 10 ))
             if [ $r -gt 7 ] 
             then
                if [ $r -gt 8 ]
                then
                    echo "$line" >> temp.txt
                    cat ./temp.txt >> ./filter_test.txt
                    cat /dev/null > ./temp.txt

                else
                    echo "$line" >> temp.txt
                    cat ./temp.txt >> ./filter_dev.txt
                    cat /dev/null > ./temp.txt
                fi
                
            else 
                echo "$line" >> temp.txt
                cat ./temp.txt >> ./filter_train.txt
                cat /dev/null > ./temp.txt
            fi
    else
        echo "$line" >> temp.txt
        fi
        
done < train.txt