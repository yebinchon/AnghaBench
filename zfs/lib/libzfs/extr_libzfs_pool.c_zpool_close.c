
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zpool_props; int zpool_old_config; int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;


 int free (TYPE_1__*) ;
 int nvlist_free (int ) ;

void
zpool_close(zpool_handle_t *zhp)
{
 nvlist_free(zhp->zpool_config);
 nvlist_free(zhp->zpool_old_config);
 nvlist_free(zhp->zpool_props);
 free(zhp);
}
