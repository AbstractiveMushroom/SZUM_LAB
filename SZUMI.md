 
 # *Mimika ruchu rąk ludzkich przy pomocy robota humanoidalnego*
 
 ## ROS WITH GAZEBO
  <http://wiki.ros.org/melodic/Installation/Ubuntu>

- MAKE CATKIN WORKSPACE

  1. `mkdir catkin_ws`
  2. `cd catkin_ws`
  3. `mkdir src`

 ## INSTALL PR2
<http://wiki.ros.org/pr2_simulator/Installation>

### OR COPY AND PASTE TO ### 
- <https://github.com/PR2/pr2_simulator?fbclid=IwAR0XcmK1EKeZSED3--Cf6FOrUIj6BJWOUDhaIkoGQSJkJvj6J79y8fphFzI>
  - '/catkin_ws/src' 
### AND USE ### 
  - `catkin_make` **TO BUILD**


### TRY LAUNCH
- `roslaunch pr2_gazebo pr2_empty_world.launch`

### INTEL REALSENSE SDK WITH ROS NODE
<https://github.com/IntelRealSense/realsense-ros?fbclid=IwAR0Jh3s8qtIMDUmblJm1SM-zqHW6pmQpECQgKS0EI67r4t2ogjTbegBnQfY>

### TRY LAUNCH
- `roslaunch realsense2_camera rs_camera.launch`

## IMAGE PROCESSING

1. `sudo install pip3`
2. `pip3 install tensorflow==1.14`      **CPU**
    ##### OR
    2.1 `pip3 install tensorflow-gpu==1.14`  **ONLY FOR NVIDIA GPU**

3. `pip3 install python==3.6`
4. `pip3 install scipy`
5. `pip3 install pyyaml`
6. `pip3 install opencv-python`

# USER MANUAL 

## Launching code with Intel RealSense D435i camera:

1. Dowload folder *`SZUM_LAB`*
2. Plug camera into computer
3. Launch PR2 in gazebo with ROS 
   - `roslaunch pr2_gazebo pr2_empty_world.launch`
4. Launch RealSense with ROS 
   - `roslaunch realsense2_camera rs_camera.launch`
5. Try 
    - `rosinit` in **MATLAB**
6. Open `SZUM_LAB` directory to `posenet-python` and run terminal there
7. If there are any files in images and output folder or output folder - delete them
8. Run our Python script using command: `python3 custom_demo.py`
9. Run matlab script "camera.m" in MATLAB
10. Sit in front of camera in distance of about 3 meters and freeze your hands in chosen pose.


## Launching second time:
1. Run matlab before Python code (matlab script will wait for Python response) 
   to delete previous data*
2. Run Python script (it checks for newer image id and needs restart)


Hard disk is used for data exchange between Matlab and Python script

  *`trash should be emptied regularly!!!!`*

 #### *CREATED BY `MICHAŁ` AND `PIOTR`*