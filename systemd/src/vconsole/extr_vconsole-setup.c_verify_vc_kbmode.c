
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ IN_SET (int,int ,int ) ;
 int KDGKBMODE ;
 int K_UNICODE ;
 int K_XLATE ;
 int errno ;
 scalar_t__ ioctl (int,int ,int*) ;

__attribute__((used)) static int verify_vc_kbmode(int fd) {
        int curr_mode;
        if (ioctl(fd, KDGKBMODE, &curr_mode) < 0)
                return -errno;

        return IN_SET(curr_mode, K_XLATE, K_UNICODE) ? 0 : -EBUSY;
}
