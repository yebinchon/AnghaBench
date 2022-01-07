
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int errno ;

int vlc_socketpair(int pf, int type, int proto, int fds[2], bool nonblock)
{
    (void) pf; (void) type; (void) proto; (void) fds; (void) nonblock;
    errno = ENOSYS;
    return -1;
}
