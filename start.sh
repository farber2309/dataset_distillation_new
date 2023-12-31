

# =====================
# Logging information
# =====================

echo "Job running"

dt=$(date '+%d/%m/%Y %H:%M:%S')
echo "Job started: $dt"

python main.py --mode distill_basic --dataset FashionMNIST --arch LeNet --distill_lr 0.02  --epochs 100 --lr 0.01

dt=$(date '+%d/%m/%Y %H:%M:%S')
echo "Training ended: $dt"