
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VT_RELDISP ;
 int assert (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int) ;
 int vt_restore (int) ;

int vt_release(int fd, bool restore) {
        assert(fd >= 0);





        if (ioctl(fd, VT_RELDISP, 1) < 0)
                return -errno;

        if (restore)
                return vt_restore(fd);

        return 0;
}
