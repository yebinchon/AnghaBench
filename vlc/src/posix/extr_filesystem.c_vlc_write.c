
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {void* iov_base; size_t iov_len; } ;
typedef int ssize_t ;


 int vlc_writev (int,struct iovec*,int) ;

ssize_t vlc_write(int fd, const void *buf, size_t len)
{
    struct iovec iov = { .iov_base = (void *)buf, .iov_len = len };

    return vlc_writev(fd, &iov, 1);
}
