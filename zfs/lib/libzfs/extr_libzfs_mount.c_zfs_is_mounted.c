
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int boolean_t ;


 int is_mounted (int ,int ,char**) ;
 int zfs_get_name (TYPE_1__*) ;

boolean_t
zfs_is_mounted(zfs_handle_t *zhp, char **where)
{
 return (is_mounted(zhp->zfs_hdl, zfs_get_name(zhp), where));
}
