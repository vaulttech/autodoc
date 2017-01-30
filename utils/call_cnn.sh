#! /bin/bash

# $1: The number of networks to be run

# --------------------------------------- Model 2 without Dropout
for ((i = 0; i < $1; i++)); do
	python cnn.py model_2_cnn_1 --dataset_index=$i >> log.txt
done

for ((i = 0; i < $1; i++)); do
	python cnn.py model_2_cnn_2 --dataset_index=$i >> log.txt
done

for ((i = 0; i < $1; i++)); do
	python cnn.py model_2_cnn_3 --dataset_index=$i >> log.txt
done


# --------------------------------------- Model 5 without Dropout
for ((i = 0; i < $1; i++)); do
	python cnn.py model_5_cnn_1 --dataset_index=$i >> log.txt
done

for ((i = 0; i < $1; i++)); do
	python cnn.py model_5_cnn_2 --dataset_index=$i >> log.txt
done

for ((i = 0; i < $1; i++)); do
	python cnn.py model_5_cnn_3 --dataset_index=$i >> log.txt
done


# --------------------------------------- Model 5 with Dropout
for ((i = 0; i < $1; i++)); do
	python cnn.py model_5_cnn_1_dropout --dataset_index=$i >> log.txt
done

for ((i = 0; i < $1; i++)); do
	python cnn.py model_5_cnn_2_dropout --dataset_index=$i >> log.txt
done

for ((i = 0; i < $1; i++)); do
	python cnn.py model_5_cnn_3_dropout --dataset_index=$i >> log.txt
done

