
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_SOCKET ;
 int SO_BINDTODEVICE ;
 int assert (int) ;
 int errno ;
 scalar_t__ setsockopt (int,int ,int ,char const*,int ) ;
 int strlen_ptr (char const*) ;

int socket_bind_to_ifname(int fd, const char *ifname) {
        assert(fd >= 0);



        if (setsockopt(fd, SOL_SOCKET, SO_BINDTODEVICE, ifname, strlen_ptr(ifname)) < 0)
                return -errno;

        return 0;
}
