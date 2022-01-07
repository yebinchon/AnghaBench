
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int ENOTTY ;
 int FS_IOC_GETFLAGS ;
 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int assert (int) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,unsigned int*) ;

int read_attr_fd(int fd, unsigned *ret) {
        struct stat st;

        assert(fd >= 0);

        if (fstat(fd, &st) < 0)
                return -errno;

        if (!S_ISDIR(st.st_mode) && !S_ISREG(st.st_mode))
                return -ENOTTY;

        if (ioctl(fd, FS_IOC_GETFLAGS, ret) < 0)
                return -errno;

        return 0;
}
