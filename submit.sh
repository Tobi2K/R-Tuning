#!/bin/bash

#SBATCH --job-name="R-Tuning"
#SBATCH --nodes=1
#SBATCH --mem=160G
#SBATCH --cpus-per-task=8
#SBATCH --gpus=2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=tobias.kalmbach@stud.uni-hannover.de
#SBATCH --nodelist=gpunode02,gpunode03,gpunode04,gpunode05

source /opt/conda/etc/profile.d/conda.sh
conda activate lmflow



cd training
cd WiCE
python run_wice.py \
--model openlm-research/open_llama_7b \
--method unsure

#cd ..
#cd HotpotQA
#python run_hotpotqa.py \
#--model openlm-research/open_llama_7b \
#--method unsure

#cd ..
#cd MMLU
#python run_MMLU.py \
#--model openlm-research/open_llama_7b \
#--method unsure

#cd ..
#cd FEVER
#python run_fever.py \
#--model openlm-research/open_llama_7b \
#--method unsure
