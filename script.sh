#!/bin/bash

trtexec \
  --onnx=model/DETR-ResNet50.onnx \
  --verbose \
  --int8 \
  --precisionConstraints=prefer \
  --layerPrecisions=*:int8 \
  --exportTimes=detr-times.json \
  2>&1 | tee detr.log

#  --exportProfile=detr-profile.json \
#  --exportLayerInfo=detr-layer-info.json \

