
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stat {scalar_t__ st_rdev; int st_mode; } ;
struct btrfs_ioctl_fs_info_args {int num_devices; int max_id; int devid; scalar_t__ path; } ;
struct btrfs_ioctl_dev_info_args {int num_devices; int max_id; int devid; scalar_t__ path; } ;
typedef scalar_t__ dev_t ;


 int BTRFS_IOC_DEV_INFO ;
 int BTRFS_IOC_FS_INFO ;
 int ENODEV ;
 int ENOTTY ;
 int S_ISBLK (int ) ;
 int assert (int) ;
 int btrfs_is_filesystem (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct btrfs_ioctl_fs_info_args*) ;
 scalar_t__ major (scalar_t__) ;
 scalar_t__ stat (char*,struct stat*) ;

int btrfs_get_block_device_fd(int fd, dev_t *dev) {
        struct btrfs_ioctl_fs_info_args fsi = {};
        uint64_t id;
        int r;

        assert(fd >= 0);
        assert(dev);

        r = btrfs_is_filesystem(fd);
        if (r < 0)
                return r;
        if (!r)
                return -ENOTTY;

        if (ioctl(fd, BTRFS_IOC_FS_INFO, &fsi) < 0)
                return -errno;


        if (fsi.num_devices != 1) {
                *dev = 0;
                return 0;
        }

        for (id = 1; id <= fsi.max_id; id++) {
                struct btrfs_ioctl_dev_info_args di = {
                        .devid = id,
                };
                struct stat st;

                if (ioctl(fd, BTRFS_IOC_DEV_INFO, &di) < 0) {
                        if (errno == ENODEV)
                                continue;

                        return -errno;
                }

                if (stat((char*) di.path, &st) < 0)
                        return -errno;

                if (!S_ISBLK(st.st_mode))
                        return -ENODEV;

                if (major(st.st_rdev) == 0)
                        return -ENODEV;

                *dev = st.st_rdev;
                return 1;
        }

        return -ENODEV;
}
