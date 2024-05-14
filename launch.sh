#!/bin/bash

# chick if no arguments provided
if [ $# -eq 0 ]; then
    CMD="ros2 launch zed_wrapper zed_camera.launch.py camera_model:=zedm publish_tf:=false publish_map_tf:=false publish_imu_tf:=false ros_params_override_path:=/mounted/overrides.yaml"
else
    CMD=$@
fi
docker run -v .:/mounted --user=ros -e RMW_IMPLEMENTATION=rmw_fastrtps_cpp -e ROS_DOMAIN_ID=0 --net=host --ipc=host --pid=host -it --rm --privileged --gpus all zed $CMD