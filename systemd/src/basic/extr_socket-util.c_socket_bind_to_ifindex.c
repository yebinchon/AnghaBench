
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifindex ;


 int ENOPROTOOPT ;
 int IF_NAMESIZE ;
 int SOL_SOCKET ;
 int SO_BINDTODEVICE ;
 int SO_BINDTOIFINDEX ;
 int assert (int) ;
 int errno ;
 int format_ifname (int,char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket_bind_to_ifname (int,char*) ;

int socket_bind_to_ifindex(int fd, int ifindex) {
        char ifname[IF_NAMESIZE + 1];

        assert(fd >= 0);

        if (ifindex <= 0) {

                if (setsockopt(fd, SOL_SOCKET, SO_BINDTODEVICE, ((void*)0), 0) < 0)
                        return -errno;

                return 0;
        }

        if (setsockopt(fd, SOL_SOCKET, SO_BINDTOIFINDEX, &ifindex, sizeof(ifindex)) >= 0)
                return 0;
        if (errno != ENOPROTOOPT)
                return -errno;


        if (!format_ifname(ifindex, ifname))
                return -errno;

        return socket_bind_to_ifname(fd, ifname);
}
