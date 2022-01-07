
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int ENOTTY ;
 int FS_IOC_GETFLAGS ;
 int FS_IOC_SETFLAGS ;
 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int assert (int) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,unsigned int*) ;

int chattr_fd(int fd, unsigned value, unsigned mask, unsigned *previous) {
        unsigned old_attr, new_attr;
        struct stat st;

        assert(fd >= 0);

        if (fstat(fd, &st) < 0)
                return -errno;







        if (!S_ISDIR(st.st_mode) && !S_ISREG(st.st_mode))
                return -ENOTTY;

        if (mask == 0 && !previous)
                return 0;

        if (ioctl(fd, FS_IOC_GETFLAGS, &old_attr) < 0)
                return -errno;

        new_attr = (old_attr & ~mask) | (value & mask);
        if (new_attr == old_attr) {
                if (previous)
                        *previous = old_attr;
                return 0;
        }

        if (ioctl(fd, FS_IOC_SETFLAGS, &new_attr) < 0)
                return -errno;

        if (previous)
                *previous = old_attr;

        return 1;
}
