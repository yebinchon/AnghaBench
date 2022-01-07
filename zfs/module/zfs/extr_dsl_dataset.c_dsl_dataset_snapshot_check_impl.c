
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_12__ {scalar_t__ ds_trysnap_txg; int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_13__ {scalar_t__ tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;
typedef int cred_t ;
typedef int boolean_t ;
struct TYPE_14__ {scalar_t__ ds_prev_snap_txg; } ;


 scalar_t__ DS_IS_INCONSISTENT (TYPE_1__*) ;
 int EAGAIN ;
 int EBUSY ;
 int EEXIST ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int ZFS_PROP_SNAPSHOT_LIMIT ;
 int dmu_tx_is_syncing (TYPE_2__*) ;
 TYPE_8__* dsl_dataset_phys (TYPE_1__*) ;
 int dsl_dataset_snap_lookup (TYPE_1__*,char const*,scalar_t__*) ;
 int dsl_dataset_snapshot_reserve_space (TYPE_1__*,TYPE_2__*) ;
 int dsl_fs_ss_limit_check (int ,scalar_t__,int ,int *,int *) ;

int
dsl_dataset_snapshot_check_impl(dsl_dataset_t *ds, const char *snapname,
    dmu_tx_t *tx, boolean_t recv, uint64_t cnt, cred_t *cr)
{
 int error;
 uint64_t value;

 ds->ds_trysnap_txg = tx->tx_txg;

 if (!dmu_tx_is_syncing(tx))
  return (0);





 if (dsl_dataset_phys(ds)->ds_prev_snap_txg >= tx->tx_txg)
  return (SET_ERROR(EAGAIN));




 error = dsl_dataset_snap_lookup(ds, snapname, &value);
 if (error == 0)
  return (SET_ERROR(EEXIST));
 if (error != ENOENT)
  return (error);
 if (!recv && DS_IS_INCONSISTENT(ds))
  return (SET_ERROR(EBUSY));






 if (cnt != 0 && cr != ((void*)0)) {
  error = dsl_fs_ss_limit_check(ds->ds_dir, cnt,
      ZFS_PROP_SNAPSHOT_LIMIT, ((void*)0), cr);
  if (error != 0)
   return (error);
 }

 error = dsl_dataset_snapshot_reserve_space(ds, tx);
 if (error != 0)
  return (error);

 return (0);
}
