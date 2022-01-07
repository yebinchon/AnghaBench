
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;



const char *
zfs_get_name(const zfs_handle_t *zhp)
{
 return (zhp->zfs_name);
}
