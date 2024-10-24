#build on the official ros humble core image
FROM ros:humble-ros-core

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    ros-humble-usb-cam \
    && rm -rf /var/lib/apt/lists/*

COPY configs/camera.yaml camera.yaml

CMD ["ros2" "run" "usb_cam" "usb_cam_node_exe" "--ros-args" "--params-file" "camera.yaml"]
