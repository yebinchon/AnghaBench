
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_NETLINK ;
 int NETLINK_GENERIC ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int errno ;
 int socket (int ,int,int ) ;

int socket_ioctl_fd(void) {
        int fd;






        fd = socket(AF_INET, SOCK_DGRAM|SOCK_CLOEXEC, 0);
        if (fd < 0)
                fd = socket(AF_NETLINK, SOCK_RAW|SOCK_CLOEXEC, NETLINK_GENERIC);
        if (fd < 0)
                return -errno;

        return fd;
}
