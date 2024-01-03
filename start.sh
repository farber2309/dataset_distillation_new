

# =====================
# Logging information
# =====================

echo "Job running"

dt=$(date '+%d/%m/%Y %H:%M:%S')
echo "Job started: $dt"

python main.py --mode distill_basic --dataset FashionMNIST --arch LeNet --distill_lr 0.001  --epochs 200 

python main.py --mode distill_basic --dataset FashionMNIST --arch AlexCifarNet  --distill_lr 0.001 --epoch 200

dt=$(date '+%d/%m/%Y %H:%M:%S')
echo "Training ended: $dt"