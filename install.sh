
# echo "Installation of ROS2 setup"

SN=$(basename "$SHELL")
echo "I'M GONNA SET THIS UP FOR ${SN}"
cp ./ros2_setup "${HOME}/.ros2_setup.${SN}"
if grep -q "source .ros2_setup.${SN}" "${HOME}/.${SN}rc"; then
  echo ".ros2_setup.${SN} already present. No need to write 'source .ros2_setup.${SN}' in your $HOME/.${SN}rc"
else
  echo "'source .ros2_setup.${SN}' >> ${HOME}/.${SN}rc"
  echo "source .ros2_setup.${SN}" >> "${HOME}/.${SN}rc"
fi

