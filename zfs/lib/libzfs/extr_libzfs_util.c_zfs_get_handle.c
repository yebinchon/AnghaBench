
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int libzfs_handle_t ;



libzfs_handle_t *
zfs_get_handle(zfs_handle_t *zhp)
{
 return (zhp->zfs_hdl);
}
