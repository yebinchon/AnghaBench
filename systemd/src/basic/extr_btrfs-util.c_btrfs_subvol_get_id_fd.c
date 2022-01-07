
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct btrfs_ioctl_ino_lookup_args {int treeid; int objectid; } ;


 int BTRFS_FIRST_FREE_OBJECTID ;
 int BTRFS_IOC_INO_LOOKUP ;
 int ENOTTY ;
 int assert (int) ;
 int btrfs_is_filesystem (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct btrfs_ioctl_ino_lookup_args*) ;

int btrfs_subvol_get_id_fd(int fd, uint64_t *ret) {
        struct btrfs_ioctl_ino_lookup_args args = {
                .objectid = BTRFS_FIRST_FREE_OBJECTID
        };
        int r;

        assert(fd >= 0);
        assert(ret);

        r = btrfs_is_filesystem(fd);
        if (r < 0)
                return r;
        if (!r)
                return -ENOTTY;

        if (ioctl(fd, BTRFS_IOC_INO_LOOKUP, &args) < 0)
                return -errno;

        *ret = args.treeid;
        return 0;
}
