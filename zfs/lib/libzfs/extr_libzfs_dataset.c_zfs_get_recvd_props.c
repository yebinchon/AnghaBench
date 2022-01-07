
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * zfs_recvd_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvlist_t ;


 scalar_t__ get_recvd_props_ioctl (TYPE_1__*) ;

nvlist_t *
zfs_get_recvd_props(zfs_handle_t *zhp)
{
 if (zhp->zfs_recvd_props == ((void*)0))
  if (get_recvd_props_ioctl(zhp) != 0)
   return (((void*)0));
 return (zhp->zfs_recvd_props);
}
