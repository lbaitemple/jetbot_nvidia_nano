  
#!/bin/sh
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl  -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update
sudo apt install ros-melodic-desktop -y
#sudo apt autoremove -y
sudo apt-get install python3 python3-dev python3-pip python3-yaml -y
sudo pip3 install catkin_pkg empy rospkg
sudo apt install python3-pip python3-all-dev python3-rospkg python3-catkin-pkg -y


sudo apt install -y ros-melodic-desktop --fix-missing
#sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
#sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install python3-colcon-common-extensions -y
sudo pip3 install imageio

sudo apt-get install python3-pip
sudo pip3 install -U rosdep
sudo rosdep init
rosdep update
echo "export ROS_PYTHON_VERSION=3" >> ~/.bashrc
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
 
 
## update cmake
#sudo apt install -y software-properties-common lsb-release 
#sudo apt clean all
#wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
#sudo apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main"
#sudo apt update
#sudo apt install kitware-archive-keyring
#sudo rm /etc/apt/trusted.gpg.d/kitware.gpg
#sudo apt update
#sudo apt install cmake -y
