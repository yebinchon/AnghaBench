
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {void* iov_base; size_t iov_len; } ;
typedef int ssize_t ;


 int vlc_writev_i11e (int,struct iovec*,int) ;

ssize_t vlc_write_i11e(int fd, const void *buf, size_t count)
{
    struct iovec iov = { .iov_base = (void*)buf, .iov_len = count };
    return vlc_writev_i11e(fd, &iov, 1);
}
