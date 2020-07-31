in_fn=$1
out_fn=$2
cd /home/chenlingxi/mnt/chenlingxi/workspace/Bio_Projects/covid19/SPMCIIP

R_LIBS_USER=/disk2/workspace/chenlingxi/lib/tools/R:/disk2/workspace/chenlingxi/lib/tools/anaconda3/lib/R/library

/home/chenlingxi/mnt/chenlingxi/lib/tools/anaconda3/bin/Rscript \
    /home/chenlingxi/mnt/chenlingxi/workspace/Bio_Projects/covid19/SPMCIIP/predict_SPMCIIP.R \
    -i $in_fn \
    -o $out_fn 
