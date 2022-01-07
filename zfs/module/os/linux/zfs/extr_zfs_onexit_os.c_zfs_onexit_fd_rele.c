
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int releasef (int) ;

void
zfs_onexit_fd_rele(int fd)
{
 releasef(fd);
}
