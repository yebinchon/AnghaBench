
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stat {int st_ino; int st_mode; } ;


 int BTRFS_IOC_SUBVOL_GETFLAGS ;
 int BTRFS_SUBVOL_RDONLY ;
 int EINVAL ;
 int S_ISDIR (int ) ;
 int assert (int) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,int*) ;

int btrfs_subvol_get_read_only_fd(int fd) {
        uint64_t flags;
        struct stat st;

        assert(fd >= 0);

        if (fstat(fd, &st) < 0)
                return -errno;

        if (!S_ISDIR(st.st_mode) || st.st_ino != 256)
                return -EINVAL;

        if (ioctl(fd, BTRFS_IOC_SUBVOL_GETFLAGS, &flags) < 0)
                return -errno;

        return !!(flags & BTRFS_SUBVOL_RDONLY);
}
