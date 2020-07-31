# SPMCIIP

SPMCIIP: Severity Prediction Model for COVID-19 by Immune-inflammatory Parameters (https://spmciip.deepomics.org/)


## Pre-requirements
* R3.6
* caret
* e1071
* gbm
* randomForest


## Installation

### Installation from Github
To clone the repository and install manually, run the following from a terminal:
```Bash
git clone https://github.com/paprikachan/SPMCIIP.git
cd SPMCIIP
```

## Usage

### Help page

In command line:
```shell
Usage: predict_SPMCIIP.R [options]

Options:
        -i CHARACTER, --infile=CHARACTER
                Path of X input file

        -o CHARACTER, --outfile=CHARACTER
                Path of Y output file

        -h, --help
                Show this help message and exit
```

### Quick start
The following code runs an example of SPMCIIP.

```shell
predict_SPMCIIP.R -i test_X.csv -o pred_y.csv
```

## File format

### Input file


Input file is a csv file, stores the measurements of six immune-inflammatory markers for each patient:
* Th/Ts
* T+B+NK count  (per μl)
* IL-2R         (U/mL)
* IL-6          (pg/mL)
* CRP           (mg/L)
* PCT           (ng/mL）

Note: Th/Ts,CD4+/CD8+. T+B+NK,CD3+CD19-;CD3-CD19+;CD3-CD16+CD56+. IL-2R, interleukin 2R. IL-6, interleukin 6. CRP, C reactive protein. PCT,Procalcitonin.

### Output file
Out file is a csv file, stores the predicted results from CIRPMC:
* LR: The predicted critical illness probablity from logistic regression
* SVM: The predicted critical illness probablity from supported vector machine
* GBDT: The predicted critical illness probablity from gradient boosted decision tree
* KNN: The predicted critical illness probablity from k-nearest neighbor
* NN: The predicted critical illness probablity from neural network
* Probability: The predicted critical illness probablity from our ensemble model SPMCIIP
* Cluster: The predicted critical illness status, 0 or 1.
* Risk group: The stratified risk group, Non-critical or Critical.


## Cite us

## Help
If you have any questions or require assistance using SPMCIIP, please open an issue.
