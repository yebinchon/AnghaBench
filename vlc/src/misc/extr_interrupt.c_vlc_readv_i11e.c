
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;


 int POLLIN ;
 int readv (int,struct iovec*,int) ;
 scalar_t__ vlc_poll_i11e (struct pollfd*,int,int) ;

ssize_t vlc_readv_i11e(int fd, struct iovec *iov, int count)
{
    struct pollfd ufd;

    ufd.fd = fd;
    ufd.events = POLLIN;

    if (vlc_poll_i11e(&ufd, 1, -1) < 0)
        return -1;
    return readv(fd, iov, count);
}
