
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
struct msghdr {int dummy; } ;
typedef int ssize_t ;


 int POLLIN ;
 int recvmsg (int,struct msghdr*,int) ;
 scalar_t__ vlc_poll_i11e (struct pollfd*,int,int) ;

ssize_t vlc_recvmsg_i11e(int fd, struct msghdr *msg, int flags)
{
    struct pollfd ufd;

    ufd.fd = fd;
    ufd.events = POLLIN;

    if (vlc_poll_i11e(&ufd, 1, -1) < 0)
        return -1;


    return recvmsg(fd, msg, flags);
}
