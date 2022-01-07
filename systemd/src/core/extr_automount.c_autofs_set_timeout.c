
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_2__ {scalar_t__ timeout; } ;
struct autofs_dev_ioctl {int ioctlfd; TYPE_1__ timeout; } ;


 int AUTOFS_DEV_IOCTL_TIMEOUT ;
 scalar_t__ DIV_ROUND_UP (scalar_t__,int ) ;
 scalar_t__ USEC_INFINITY ;
 int USEC_PER_SEC ;
 int assert (int) ;
 int errno ;
 int init_autofs_dev_ioctl (struct autofs_dev_ioctl*) ;
 scalar_t__ ioctl (int,int ,struct autofs_dev_ioctl*) ;

__attribute__((used)) static int autofs_set_timeout(int dev_autofs_fd, int ioctl_fd, usec_t usec) {
        struct autofs_dev_ioctl param;

        assert(dev_autofs_fd >= 0);
        assert(ioctl_fd >= 0);

        init_autofs_dev_ioctl(&param);
        param.ioctlfd = ioctl_fd;

        if (usec == USEC_INFINITY)
                param.timeout.timeout = 0;
        else

                param.timeout.timeout = DIV_ROUND_UP(usec, USEC_PER_SEC);

        if (ioctl(dev_autofs_fd, AUTOFS_DEV_IOCTL_TIMEOUT, &param) < 0)
                return -errno;

        return 0;
}
