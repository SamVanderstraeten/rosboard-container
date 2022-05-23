FROM ros:foxy-ros-base

RUN mkdir -p /home/dev_ws/src

RUN apt-get update && apt-get install -y \
        nano \
        git \
        python3-pip

COPY pip-requirements.txt /pip-requirements.txt

# TODO test if these get copied properly
COPY *.sh /home/dev_ws/
RUN chmod +x /home/dev_ws/*.sh

RUN pip install --upgrade pip
RUN pip install -r /pip-requirements.txt

RUN git clone https://github.com/dheera/rosboard.git /home/dev_ws/src

RUN echo "cd /home/dev_ws" >> ~/.bashrc
RUN echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
RUN echo ". install/local_setup.bash" >> ~/.bashrc

EXPOSE 8888