#!/bin/bash -ex
#
# install-custom-packages.sh - Install custom packages, if specified
# 
export DEBIAN_FRONTEND=noninteractive 

#echo "Installing custom packages "
#apt-get -y --no-install-recommends install nvidia-fabricmanager-535 linux-nvidia dapl2-utils ibacm ibsim-utils ibutils ibverbs-providers ibverbs-utils infiniband-diags iproute2 libdapl2 libibmad5 libibmad-dev libibnetdisc5 libibumad3 libibumad-dev libibverbs1 libibverbs-dev libopensm9 libopensm-dev librdmacm1 librdmacm-dev mstflint opensm opensm-doc perftest rdma-core rdmacm-utils srptools ucx-utils xserver-xorg dgx-a100-ota-update-meta dgx-a100-system-configurations dgx-a100-system-tools dgx-a100-system-tools-extra dgx-server-grub mlnx-pxe-setup nvidia-conf-cachefilesd nvidia-ipmisol nvidia-mlnx-config nvidia-mlnx-tools nvidia-mstflint-loader nvidia-peermem-loader automake bash-completion bison build-essential chrpath cifs-utils cmake command-not-found cryptsetup cryptsetup-initramfs curl docker-ce dpatch ethtool fail2ban flex fping gcc-multilib gdb gdisk git g++-multilib htop iperf libelf-dev libltdl-dev lsof lsscsi m4 mdadm net-tools nfs-common openssh-server pciutils pm-utils powercap-utils quota rasdaemon samba-common samba-libs sg3-utils shim-signed smartmontools sosreport ssh ssh-import-id swig sysstat udev vim vlan witalian wngerman wogerman wportuguese wspanish wswiss cuda-nvml-dev-12-2 cuda-compute-repo dgx-repo hpc-sdk-repo nvidia-repo-keys linux-tools-nvidia nv-persistence-mode nvidia-modprobe nv-docker-options nvidia-chardev-links nvidia-container-toolkit nvidia-fs-loader nvidia-manage-ofed datacenter-gpu-manager nvsm cuda-gdb-src-12-2 cuda-libraries-12-2 cuda-minimal-build-12-2 cuda-toolkit-12-2 ngc nvidia-logrotate nvidia-motd libnvidia-nscq-535 linux-modules-nvidia-535-server-nvidia nvidia-driver-535-server opensm opensm-doc

# 进入包存放目录
cd /tmp/custom-packages

# 安装deb包
sudo dpkg -i *.deb

# 修复依赖关系
sudo apt-get install -f -y
