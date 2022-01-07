
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;


 int POLLOUT ;
 scalar_t__ vlc_poll_i11e (struct pollfd*,int,int) ;
 int writev (int,struct iovec const*,int) ;

ssize_t vlc_writev_i11e(int fd, const struct iovec *iov, int count)
{
    struct pollfd ufd;

    ufd.fd = fd;
    ufd.events = POLLOUT;

    if (vlc_poll_i11e(&ufd, 1, -1) < 0)
        return -1;
    return writev(fd, iov, count);
}
