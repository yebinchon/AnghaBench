
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_ioctl_quota_rescan_args {int flags; } ;


 int BTRFS_IOC_QUOTA_RESCAN_STATUS ;
 int assert (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct btrfs_ioctl_quota_rescan_args*) ;

int btrfs_quota_scan_ongoing(int fd) {
        struct btrfs_ioctl_quota_rescan_args args = {};

        assert(fd >= 0);

        if (ioctl(fd, BTRFS_IOC_QUOTA_RESCAN_STATUS, &args) < 0)
                return -errno;

        return !!args.flags;
}
