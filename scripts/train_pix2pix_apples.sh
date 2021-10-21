set -ex
python train.py --n_epochs 1 --dataroot ../data/train_data --dataset_mode apples --name apples_pix2pix --model pix2pix --netG unet_64 --lambda_L1 100 --norm batch --pool_size 0 --input_nc 3 --output_nc 3 --display_ncols 3 --save_epoch_freq 30 --nir_channels_only
