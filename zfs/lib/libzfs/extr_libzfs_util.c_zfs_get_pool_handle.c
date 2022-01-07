
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_3__ {int * zpool_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;



zpool_handle_t *
zfs_get_pool_handle(const zfs_handle_t *zhp)
{
 return (zhp->zpool_hdl);
}
