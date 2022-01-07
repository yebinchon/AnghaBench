
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_NETLINK ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_RAW ;
 int errno ;
 int fd_move_above_stdio (int) ;
 int socket (int ,int,int) ;

int socket_open(int family) {
        int fd;

        fd = socket(PF_NETLINK, SOCK_RAW|SOCK_CLOEXEC|SOCK_NONBLOCK, family);
        if (fd < 0)
                return -errno;

        return fd_move_above_stdio(fd);
}
