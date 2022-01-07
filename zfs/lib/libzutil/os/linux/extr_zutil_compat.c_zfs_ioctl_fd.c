
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;


 int ioctl (int,unsigned long,int *) ;

int
zfs_ioctl_fd(int fd, unsigned long request, zfs_cmd_t *zc)
{
 return (ioctl(fd, request, zc));
}
