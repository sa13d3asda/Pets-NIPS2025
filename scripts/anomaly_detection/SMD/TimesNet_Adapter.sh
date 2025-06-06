model_name=TimesNet_Adapter
d_model=64		# 64
d_ff=128			# 128
n_heads=8		# 8
e_layers=12
batch_size=32

python -u run.py \
  --task_name anomaly_detection \
  --is_training 1 \
  --root_path ./dataset/SMD \
  --model_id SMD \
  --data SMD \
  --model $model_name \
  --e_layers $e_layers \
  --n_heads $n_heads \
  --d_model $d_model \
  --d_ff $d_ff \
  --batch_size $batch_size \
  --features M \
  --seq_len 100 \
  --pred_len 0 \
  --factor 3 \
  --enc_in 38 \
  --c_out 38 \
  --anomaly_ratio 0.5 \
  --itr 1