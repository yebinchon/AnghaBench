
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIOCLINUX ;
 unsigned char TIOCL_GETFGCONSOLE ;
 int errno ;
 int ioctl (int,int ,unsigned char*) ;

__attribute__((used)) static int verify_vc_device(int fd) {
        unsigned char data[] = {
                TIOCL_GETFGCONSOLE,
        };

        int r;

        r = ioctl(fd, TIOCLINUX, data);
        if (r < 0)
                return -errno;

        return r;
}
