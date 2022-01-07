
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_ioctl_quota_ctl_args {int cmd; } ;


 int BTRFS_IOC_QUOTA_CTL ;
 int BTRFS_QUOTA_CTL_DISABLE ;
 int BTRFS_QUOTA_CTL_ENABLE ;
 int ENOTTY ;
 int assert (int) ;
 int btrfs_is_filesystem (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct btrfs_ioctl_quota_ctl_args*) ;

int btrfs_quota_enable_fd(int fd, bool b) {
        struct btrfs_ioctl_quota_ctl_args args = {
                .cmd = b ? BTRFS_QUOTA_CTL_ENABLE : BTRFS_QUOTA_CTL_DISABLE,
        };
        int r;

        assert(fd >= 0);

        r = btrfs_is_filesystem(fd);
        if (r < 0)
                return r;
        if (!r)
                return -ENOTTY;

        if (ioctl(fd, BTRFS_IOC_QUOTA_CTL, &args) < 0)
                return -errno;

        return 0;
}
