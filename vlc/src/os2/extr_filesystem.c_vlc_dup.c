
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int dup (int) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ likely (int) ;

int vlc_dup (int oldfd)
{
    int newfd;

    newfd = dup (oldfd);
    if (likely(newfd != -1))
        fcntl (newfd, F_SETFD, FD_CLOEXEC);

    return newfd;
}
