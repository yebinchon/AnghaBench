
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTRFS_IOC_QUOTA_RESCAN_WAIT ;
 int assert (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ) ;

int btrfs_quota_scan_wait(int fd) {
        assert(fd >= 0);

        if (ioctl(fd, BTRFS_IOC_QUOTA_RESCAN_WAIT) < 0)
                return -errno;

        return 0;
}
