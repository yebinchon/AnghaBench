
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLKFLSBUF ;
 int ioctl (int,int ) ;

int
zfs_dev_flush(int fd)
{
 return (ioctl(fd, BLKFLSBUF));
}
