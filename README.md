# ZED ROS2
Convenience package for working with the ZED camera in ROS2.
## Setup
Use overrides.yaml to configure the ZED camera (refer to defaults.yaml and copy over parameters if necessary). Then, build the docker image, with the following command:
```
docker build -t zed-ros2 .
```
Check `launch.sh` for correct paramaters!
## Usage
To run the docker image, use the provided launch.sh script (make exectuable with `chmod +x launch.sh`):
```
./launch.sh
```
Then you should be able to visualize the output of the ZED camera in RViz2 or RQT.
### Notes
- If `ros topic/node list` does not show any ZED topics/nodes, try `ros daemon stop` and try again.