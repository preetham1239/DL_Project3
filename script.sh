#!/bin/bash 
# 
#SBATCH --job-name=pl2ap 
#SBATCH --partition=cpu 
#SBATCH --cpus-per-task=2 
#SBATCH --nodes=1 
#SBATCH --output=detection-%j.out 
#SBATCH --time=10:00 
#SBATCH --mail-type=ALL 
#SBATCH --mail-user=USERNAME@scu.edu 
# 
 
ssh login1
module load hubpy3.7-tf2.3 
python3 preprocess.py