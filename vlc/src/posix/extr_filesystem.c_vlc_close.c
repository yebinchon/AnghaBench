
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBADF ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 int assert (int) ;
 int close (int) ;
 scalar_t__ errno ;
 int posix_close (int,int ) ;
 scalar_t__ unlikely (int) ;

int vlc_close (int fd)
{
    int ret;



    ret = close(fd);



    if (unlikely(ret != 0) && unlikely(errno == EINTR))
        errno = EINPROGRESS;

    assert(ret == 0 || errno != EBADF);
    return ret;
}
