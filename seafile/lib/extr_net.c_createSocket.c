
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nodelay ;
typedef scalar_t__ evutil_socket_t ;


 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int TCP_NODELAY ;
 int ccnet_warning (char*,...) ;
 int evutil_closesocket (scalar_t__) ;
 scalar_t__ makeSocketNonBlocking (scalar_t__) ;
 int setsockopt (scalar_t__,int ,int ,char*,int) ;
 scalar_t__ socket (int,int ,int ) ;

__attribute__((used)) static evutil_socket_t
createSocket (int family, int nonblock)
{
    evutil_socket_t fd;
    int ret;

    fd = socket (family, SOCK_STREAM, 0);

    if (fd < 0) {
        ccnet_warning("create Socket failed %d\n", fd);
    } else if (nonblock) {
        int nodelay = 1;

        fd = makeSocketNonBlocking( fd );

        ret = setsockopt (fd, IPPROTO_TCP, TCP_NODELAY,
                          (char *)&nodelay, sizeof(nodelay));
        if (ret < 0) {
            ccnet_warning("setsockopt failed\n");
            evutil_closesocket(fd);
            return -1;
        }
    }

    return fd;
}
