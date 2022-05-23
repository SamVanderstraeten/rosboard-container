# rosboard-container
Docker container with a generic dashboard to inspect ROS topics in your network. Based on https://github.com/dheera/rosboard
Launch it and visualize all kinds of messages on the topics.

## Setup
### Linux
Run the scripts ```./00_build.sh```, ```./01_launch.sh``` and ```./02_attach.sh``` to fire up the container and attach your terminal to it.

### Windows
Build the image ```docker build -t rosboard``` and use Docker Desktop to manage and access it.

## Usage
### Build workspace
!! This is important, do not skip !!
Build your ROS workspace using ```colcon build```.
Source ROS, using ```./source_ros.sh``` or ```source install/setup.bash```

### Launch ROSboard
```./start_rosboard.sh``` to launch the dashboard.

### Open the dashboard
Visit ```http://localhost:8888``` or ```http://your-robot-ip:8888/```. Open the sidebar to add topics to the main dashboard. Have fun!
