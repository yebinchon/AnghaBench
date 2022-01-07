
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint_t ;
struct file {int dummy; } ;


 unsigned int ZFS_IOC_FIRST ;
 long zfsdev_ioctl_common (unsigned int,unsigned long) ;

__attribute__((used)) static long
zfsdev_ioctl(struct file *filp, unsigned cmd, unsigned long arg)
{
 uint_t vecnum;

 vecnum = cmd - ZFS_IOC_FIRST;
 return (zfsdev_ioctl_common(vecnum, arg));
}
