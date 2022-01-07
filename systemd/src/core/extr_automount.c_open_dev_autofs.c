
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct autofs_dev_ioctl {int ver_minor; int ver_major; } ;
struct TYPE_4__ {scalar_t__ dev_autofs_fd; } ;
typedef TYPE_1__ Manager ;


 int AUTOFS_DEV_IOCTL_VERSION ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int assert (TYPE_1__*) ;
 int errno ;
 int init_autofs_dev_ioctl (struct autofs_dev_ioctl*) ;
 scalar_t__ ioctl (scalar_t__,int ,struct autofs_dev_ioctl*) ;
 int label_fix (char*,int ) ;
 int log_debug (char*,int ,int ) ;
 int log_error_errno (int,char*) ;
 int open (char*,int) ;
 scalar_t__ safe_close (scalar_t__) ;

__attribute__((used)) static int open_dev_autofs(Manager *m) {
        struct autofs_dev_ioctl param;

        assert(m);

        if (m->dev_autofs_fd >= 0)
                return m->dev_autofs_fd;

        (void) label_fix("/dev/autofs", 0);

        m->dev_autofs_fd = open("/dev/autofs", O_CLOEXEC|O_RDONLY);
        if (m->dev_autofs_fd < 0)
                return log_error_errno(errno, "Failed to open /dev/autofs: %m");

        init_autofs_dev_ioctl(&param);
        if (ioctl(m->dev_autofs_fd, AUTOFS_DEV_IOCTL_VERSION, &param) < 0) {
                m->dev_autofs_fd = safe_close(m->dev_autofs_fd);
                return -errno;
        }

        log_debug("Autofs kernel version %i.%i", param.ver_major, param.ver_minor);

        return m->dev_autofs_fd;
}
