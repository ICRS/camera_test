# ros2 camera test
This is used to test the transmission quality and latency of a webcam through a ros network. This can also act as a beginner ros demo.

## Requirements
As this is streaming video between two devices, the viewer device must have:
- ros2-humble-desktop installed on native ubuntu 22.04
- docker

 The sender device must have:
 - docker
 - v4l2 webcam

## Usage
On the sender side (with the webcam), ensure the webcam is plugged in and run `docker compose up` in the cloned repo.

The reciever must be connected to the same network as the sender.
You can verify that the sender is working by either running `ros2 node list` and seeing a node called `\usb_camera` or by viewing the live feed using `rosviz2`