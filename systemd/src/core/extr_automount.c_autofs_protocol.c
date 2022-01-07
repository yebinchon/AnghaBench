
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int sub_version; } ;
struct TYPE_3__ {int version; } ;
struct autofs_dev_ioctl {int ioctlfd; TYPE_2__ protosubver; TYPE_1__ protover; } ;


 int AUTOFS_DEV_IOCTL_PROTOSUBVER ;
 int AUTOFS_DEV_IOCTL_PROTOVER ;
 int assert (int) ;
 int errno ;
 int init_autofs_dev_ioctl (struct autofs_dev_ioctl*) ;
 scalar_t__ ioctl (int,int ,struct autofs_dev_ioctl*) ;
 int log_debug (char*,int ,int ) ;

__attribute__((used)) static int autofs_protocol(int dev_autofs_fd, int ioctl_fd) {
        uint32_t major, minor;
        struct autofs_dev_ioctl param;

        assert(dev_autofs_fd >= 0);
        assert(ioctl_fd >= 0);

        init_autofs_dev_ioctl(&param);
        param.ioctlfd = ioctl_fd;

        if (ioctl(dev_autofs_fd, AUTOFS_DEV_IOCTL_PROTOVER, &param) < 0)
                return -errno;

        major = param.protover.version;

        init_autofs_dev_ioctl(&param);
        param.ioctlfd = ioctl_fd;

        if (ioctl(dev_autofs_fd, AUTOFS_DEV_IOCTL_PROTOSUBVER, &param) < 0)
                return -errno;

        minor = param.protosubver.sub_version;

        log_debug("Autofs protocol version %i.%i", major, minor);
        return 0;
}
