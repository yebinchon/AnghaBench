
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_IOCTL_SET_MASTER ;
 int assert (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int ) ;

__attribute__((used)) static int sd_drmsetmaster(int fd) {
        assert(fd >= 0);

        if (ioctl(fd, DRM_IOCTL_SET_MASTER, 0) < 0)
                return -errno;

        return 0;
}
