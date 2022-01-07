
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_type_t ;
struct TYPE_3__ {int zfs_type; } ;
typedef TYPE_1__ zfs_handle_t ;



zfs_type_t
zfs_get_type(const zfs_handle_t *zhp)
{
 return (zhp->zfs_type);
}
