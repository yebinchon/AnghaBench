
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDSKBMODE ;
 int K_UNICODE ;
 int K_XLATE ;
 int errno ;
 scalar_t__ ioctl (int,int ,int) ;
 scalar_t__ vt_default_utf8 () ;

int vt_reset_keyboard(int fd) {
        int kb;


        kb = vt_default_utf8() != 0 ? K_UNICODE : K_XLATE;

        if (ioctl(fd, KDSKBMODE, kb) < 0)
                return -errno;

        return 0;
}
