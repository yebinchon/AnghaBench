
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zfs_recvd_props; int zfs_user_props; int zfs_props; struct TYPE_4__* zfs_mntopts; } ;
typedef TYPE_1__ zfs_handle_t ;


 int free (TYPE_1__*) ;
 int nvlist_free (int ) ;

void
zfs_close(zfs_handle_t *zhp)
{
 if (zhp->zfs_mntopts)
  free(zhp->zfs_mntopts);
 nvlist_free(zhp->zfs_props);
 nvlist_free(zhp->zfs_user_props);
 nvlist_free(zhp->zfs_recvd_props);
 free(zhp);
}
