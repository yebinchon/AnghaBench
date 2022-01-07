
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_DUPFD_CLOEXEC ;
 int fcntl (int,int ,int ) ;

int vlc_dup (int oldfd)
{
    return fcntl (oldfd, F_DUPFD_CLOEXEC, 0);
}
