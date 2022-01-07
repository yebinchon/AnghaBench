
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {scalar_t__ cb_create; int cb_error; } ;
typedef TYPE_1__ rollback_data_t ;


 int B_FALSE ;
 int ZFS_PROP_CREATETXG ;
 int rollback_destroy_dependent ;
 int zfs_close (int *) ;
 int zfs_destroy (int *,int ) ;
 int zfs_iter_dependents (int *,int ,int ,TYPE_1__*) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
rollback_destroy(zfs_handle_t *zhp, void *data)
{
 rollback_data_t *cbp = data;

 if (zfs_prop_get_int(zhp, ZFS_PROP_CREATETXG) > cbp->cb_create) {
  cbp->cb_error |= zfs_iter_dependents(zhp, B_FALSE,
      rollback_destroy_dependent, cbp);

  cbp->cb_error |= zfs_destroy(zhp, B_FALSE);
 }

 zfs_close(zhp);
 return (0);
}
