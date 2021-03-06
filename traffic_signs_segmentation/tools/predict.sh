#Cuda visible devices
CUDA_VISIBLE_DEVICES=0

# Input images folder
INPUT_PATH=/data/caffe_model/test
# Output results path
OUTPUT_PATH=/data/output

# Do not modify
CONFIG=./config
UTILS=./utils
TRAFFIC_SIGNS_SEGMENTATION_FOLDER=./../

cd $TRAFFIC_SIGNS_SEGMENTATION_FOLDER

PYTHONPATH="${PYTHONPATH}:../:../apollo_python_common/:../apollo_python_common/protobuf/:./utils/:./"
export PYTHONPATH

CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES python3 -u ./inference_server.py --input_path $INPUT_PATH --output_path $OUTPUT_PATH
