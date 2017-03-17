declare -r path_train=/home/dnr/Documents/data/ddsm-1024/training
#declare -r path_test=/home/dnr/Documents/data/ddsm-1024/testing
declare -r path_val=/home/dnr/Documents/data/ddsm-1024/validation
declare -r path_inf=/home/dnr/Documents/data/ddsm-1024/inference

declare -r name=ddsm-1024-att

declare -r path_model=/home/dnr/modelState/$name.ckpt
declare -r path_log=/home/dnr/logs/$name.txt

python train_CNNattention.py --pTrain $path_train --pVal $path_val --pLog $path_log --name $name --nGPU 4 --bs 32 --ep 1000 --nClass 2 --do 1.0 --lr 0.0001 --net GoogLe
