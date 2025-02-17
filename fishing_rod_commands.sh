# --------- EXTRACT PATCHES ----------

python extract_patches.py  \
 --dataroot /media/disk2/proj_embedding_aug \
 --slide_dir /media/disk2/prostate/SICAPv2/wsis \
 --preset tcga.csv --mag_level 40 --patch_size 256 --seg --patch --stitch --fp


# ---------- EXTRACT FEATURES ----------

CUDA_VISIBLE_DEVICES=0 python extract_features.py \
 --dataroot /media/disk2/proj_embedding_aug \
 --extracted_dir extracted_mag40x_patch256_fp \
 --slide_dir /media/disk2/prostate/SICAPv2/wsis \
 --enc_name resnet50_trunc \
 --batch_size 10
