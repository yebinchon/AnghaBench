
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sc_prop; int * sc_next; } ;
typedef TYPE_1__ zfs_sort_column_t ;


 scalar_t__ ZFS_PROP_NAME ;

int
zfs_sort_only_by_name(const zfs_sort_column_t *sc)
{
 return (sc != ((void*)0) && sc->sc_next == ((void*)0) &&
     sc->sc_prop == ZFS_PROP_NAME);
}
