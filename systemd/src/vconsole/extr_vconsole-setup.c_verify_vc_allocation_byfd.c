
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_stat {int v_active; } ;


 int VT_GETSTATE ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct vt_stat*) ;
 int verify_vc_allocation (int ) ;

__attribute__((used)) static int verify_vc_allocation_byfd(int fd) {
        struct vt_stat vcs = {};

        if (ioctl(fd, VT_GETSTATE, &vcs) < 0)
                return -errno;

        return verify_vc_allocation(vcs.v_active);
}
