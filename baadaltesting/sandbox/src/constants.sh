ROOT=$PWD

BIN=$ROOT/bin
UTILS=$ROOT/utils
DISKS=$ROOT/disks
LOGS=$ROOT/logs
TEMP=$ROOT/temp
SRC=$ROOT/src
NAT=$SRC/nat
CONTROLLER=$SRC/controller
FILER=$SRC/filer

CONFIGURE=$SRC/constants.sh

UBUNTU=$UTILS/ubuntu.iso
LIBVIRT=libvirt-1.2.1
LIBVIRT_TAR=$UTILS/$LIBVIRT.tar.gz

ECHO_PROGRESS="echo -e -n"
ECHO_OK="echo -e \"\r\033[K[\e[0;32mOK\e[0m]\t"
ECHO_ER="echo -e \"\r\033[K[\e[0;31mER\e[0m]\t"
LOG_CLEAN="rm -f $LOGS/*"

BRCOMPAT_SRC=$BIN/openvswitch-switch
BRCOMPAT_DST=/etc/default/openvswitch-switch

OVS_ETHERNET=eth0

#Update this in OVS_NET_XML too
OVS_BRIDGE_INTERNAL=baadal-br-int
OVS_NET_INTERNAL=ovs-internal
OVS_NET_XML_INTERNAL=$BIN/ovs-net-internal.xml

#Update this in OVS_NET_XML_EXTERNAL too
OVS_BRIDGE_EXTERNAL=baadal-br-ext
OVS_NET_EXTERNAL=ovs-external
OVS_NET_XML_EXTERNAL=$BIN/ovs-net-external.xml
OVS_EXTERNAL_CUSTOM_IFS=$BIN/interfaces.sandbox

#These values may be updated by configure.
NETWORK_INTERNAL_IP_SANDBOX=10.0.0.1
NETWORK_INTERNAL_IP_CONTROLLER=10.0.0.2
NETWORK_INTERNAL_IP_NAT=10.0.0.3
NETWORK_INTERNAL_IP_FILER=10.0.0.4
NETWORK_INTERNAL_IP_GATEWAY=$NETWORK_INTERNAL_IP_NAT

NAT_DISK=$DISKS/nat.img
NAT_SPACE=5
NAT_ARCH=x86_64
NAT_NAME=baadal_nat
NAT_RAM=1024
NAT_VCPUS=1
NAT_ISO=$UTILS/ubuntu.nat.iso
NAT_KICKSTART=$BIN/ks.nat.cfg
NAT_TRANSFER=$BIN/transfer.nat/
NAT_KS=$NAT/ks.cfg

CONTROLLER_DISK=$DISKS/controller.img
CONTROLLER_SPACE=5
CONTROLLER_ARCH=x86_64
CONTROLLER_NAME=baadal_controller
CONTROLLER_RAM=1024
CONTROLLER_VCPUS=1
CONTROLLER_ISO=$UTILS/ubuntu.controller.iso
CONTROLLER_KICKSTART=$BIN/ks.controller.cfg
CONTROLLER_TRANSFER=$BIN/transfer.controller/
CONTROLLER_KS=$CONTROLLER/ks.cfg

FILER_DISK=$DISKS/filer.img
FILER_SPACE=50
FILER_ARCH=x86_64
FILER_NAME=baadal_filer
FILER_RAM=1024
FILER_VCPUS=1
FILER_ISO=$UTILS/ubuntu.filer.iso
FILER_KICKSTART=$BIN/ks.filer.cfg
FILER_TRANSFER=$BIN/transfer.filer/
FILER_KS=$FILER/ks.cfg

HOST_ID=${HOST_ID:-0}
HOST_DISK=$DISKS/host.$HOST_ID.img
HOST_SPACE=5
HOST_ARCH=x86_64
HOST_NAME=baadal_host_$HOST_ID
HOST_RAM=8192
HOST_VCPUS=4

HOST_MAC_1=52:52:00:01:15:01
HOST_MAC_2=52:52:00:01:15:02
HOST_MAC_3=52:52:00:01:15:03
HOST_MAC_4=52:52:00:01:15:04
HOST_MAC_5=52:52:00:01:15:05
HOST_MAC_HELPER=HOST_MAC_${HOST_ID}
HOST_MAC=${!HOST_MAC_HELPER}
