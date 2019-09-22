PYTHONPATH=$PYTHONPATH:/Users/system/Github/models/research:/Users/system/Github/models/research/slim

#PATH_TO_INITIAL_CHECKPOINT=./models/deeplabv3_pascal_trainval/model.ckpt
PATH_TO_TRAIN_DIR=./logs
PATH_TO_DATASET=/Users/system/data/datasets/consid-voc/tfrecord
python train.py \
    --logtostderr \
    --training_number_of_steps=30000 \
    --train_split="train" \
    --model_variant="xception_65" \
    --atrous_rates=6 \
    --atrous_rates=12 \
    --atrous_rates=18 \
    --output_stride=16 \
    --decoder_output_stride=4 \
    --initialize_last_layer=false \
    --train_crop_size="513,513" \
    --train_batch_size=1 \
    --dataset="considition" \
    --train_logdir=${PATH_TO_TRAIN_DIR} \
    --dataset_dir=${PATH_TO_DATASET}

#--tf_initial_checkpoint=${PATH_TO_INITIAL_CHECKPOINT} \
