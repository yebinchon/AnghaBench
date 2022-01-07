
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
struct msghdr {int dummy; } ;
typedef int ssize_t ;


 int POLLOUT ;
 int sendmsg (int,struct msghdr const*,int) ;
 scalar_t__ vlc_poll_i11e (struct pollfd*,int,int) ;

ssize_t vlc_sendmsg_i11e(int fd, const struct msghdr *msg, int flags)
{
    struct pollfd ufd;

    ufd.fd = fd;
    ufd.events = POLLOUT;

    if (vlc_poll_i11e(&ufd, 1, -1) < 0)
        return -1;

    return sendmsg(fd, msg, flags);
}
