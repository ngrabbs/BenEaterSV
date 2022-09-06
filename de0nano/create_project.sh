#!/bin/sh
PROJECT=cpusys_de0nano
TOP_LEVEL_FILE=cpusys_de0nano.sv
FAMILY="Cyclone IV E"
PART=EP4CE22F17C6
PACKING_OPTION=minimize_area
quartus_map $PROJECT --source=$TOP_LEVEL_FILE
quartus_fit $PROJECT --part=$PART --pack_register=$PACKING_OPTION
quartus_asm $PROJECT
quartus_sta $PROJECT
