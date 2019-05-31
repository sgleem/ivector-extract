#!/bin/bash
. cmd.sh
# Train ivector extractor from data/train/feats.ark
# bash train_diag_ubm.sh --nj 6 --cmd "$train_cmd" data/train 1024 exp/diag_ubm
# bash train_ivector_extractor.sh --nj 6 --cmd "$train_cmd" data/train exp/diag_ubm exp/extractor

# Extract ivector from data/test
bash extract_ivectors.sh --nj 6 --cmd "$train_cmd" data/test data/test_lang exp/extractor data/test_align exp/ivector
# bash extract_ivectors.sh data/test data/test_lang exp/extractor exp/ivector
