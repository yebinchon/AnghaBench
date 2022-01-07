
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_deregister (int *) ;
 int zfs_misc ;

void
zfsdev_detach(void)
{
 misc_deregister(&zfs_misc);
}
