#python3 train.py --train-file ../../data/EM/datasets/textual_company/train_tfidfv11.txt --dev-file ../../data/EM/datasets/textual_company/valid_tfidfv11.txt --train-rep 'swap' 'drop' 'add' 'none' --val-rep 'swap' 'drop' 'add' 'none' --train-rep-probs 0.25 0.25 0.25 0.25 --val-rep-probs 0.25 0.25 0.25 0.25 --task-name tc_ --new-vocab --min-freq 100 --model-type elmo-plus-scrnn --num-epochs 80 --save --unk-output

CUDA_VISIBLE_DEVICES=1 python3 train.py --no-train --vocab-size 1867 --task-name sia_ --model-path model_temp/elmo-plus-scrnn_sia_minfreq=1_voc_size=1867 --ori-folder ../../data/EM/datasets/structured_itunes_amazon/ori_txt --pred-folder ../../data/EM/datasets/structured_itunes_amazon/pred_txt --model-type elmo-plus-scrnn

