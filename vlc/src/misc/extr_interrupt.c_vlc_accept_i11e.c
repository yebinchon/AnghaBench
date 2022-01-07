
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct pollfd {int fd; int events; } ;
typedef int socklen_t ;


 int POLLIN ;
 int vlc_accept (int,struct sockaddr*,int *,int) ;
 scalar_t__ vlc_poll_i11e (struct pollfd*,int,int) ;

int vlc_accept_i11e(int fd, struct sockaddr *addr, socklen_t *addrlen,
                  bool blocking)
{
    struct pollfd ufd;

    ufd.fd = fd;
    ufd.events = POLLIN;

    if (vlc_poll_i11e(&ufd, 1, -1) < 0)
        return -1;

    return vlc_accept(fd, addr, addrlen, blocking);
}
