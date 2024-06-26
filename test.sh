#!/bin/bash
# python demo.py data.modality='video' \
#                pretrained_model_path='/media/NAS/USERS/moonbo/avsr/vsr_trlrwlrs2lrs3vox2avsp_base.pth' \
#                file_path='/media/NAS/DATASET/1mDFDC/liptest/19_real.mp4'

python multi_demo_test2.py data.modality='video' \
                pretrained_model_path='/media/NAS/USERS/moonbo/avsr/vsr_trlrwlrs2lrs3vox2avsp_base.pth' \
                file_path='filelist.txt' \
                csv_file='test1.csv'

# python multi_demo.py data.modality='audio' \
#                 pretrained_model_path='/media/NAS/USERS/moonbo/avsr/vasr_trlrwlrs2lrs3vox2avsp_base.pth' \
#                 file_path='/media/NAS/DATASET/1mDFDC/train/'