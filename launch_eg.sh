#!/bin/bash


python3 server.py --world_size 3 --num_workers 4 --batch_size 32 &

python3 client_breakhis.py --world_size 3 --rank 1 --epoch 50 --batch_size 32 --num_workers 4 &
wait
