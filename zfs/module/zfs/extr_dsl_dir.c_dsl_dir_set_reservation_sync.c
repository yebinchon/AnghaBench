
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int longlong_t ;
struct TYPE_11__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_12__ {scalar_t__ ddsqra_value; int ddsqra_source; int ddsqra_name; } ;
typedef TYPE_2__ dsl_dir_set_qr_arg_t ;
struct TYPE_13__ {int ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 scalar_t__ SPA_VERSION_RECVD_PROPS ;
 int VERIFY0 (int ) ;
 int ZFS_PROP_RESERVATION ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_1__*,int ,int ,TYPE_3__**) ;
 int dsl_dataset_rele (TYPE_3__*,int ) ;
 int dsl_dir_set_reservation_sync_impl (int ,scalar_t__,int *) ;
 int dsl_prop_get_int_ds (TYPE_3__*,int ,scalar_t__*) ;
 int dsl_prop_set_sync_impl (TYPE_3__*,int ,int ,int,int,scalar_t__*,int *) ;
 int spa_history_log_internal_ds (TYPE_3__*,char*,int *,char*,int ,int ) ;
 scalar_t__ spa_version (int ) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static void
dsl_dir_set_reservation_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dir_set_qr_arg_t *ddsqra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 uint64_t newval;

 VERIFY0(dsl_dataset_hold(dp, ddsqra->ddsqra_name, FTAG, &ds));

 if (spa_version(dp->dp_spa) >= SPA_VERSION_RECVD_PROPS) {
  dsl_prop_set_sync_impl(ds,
      zfs_prop_to_name(ZFS_PROP_RESERVATION),
      ddsqra->ddsqra_source, sizeof (ddsqra->ddsqra_value), 1,
      &ddsqra->ddsqra_value, tx);

  VERIFY0(dsl_prop_get_int_ds(ds,
      zfs_prop_to_name(ZFS_PROP_RESERVATION), &newval));
 } else {
  newval = ddsqra->ddsqra_value;
  spa_history_log_internal_ds(ds, "set", tx, "%s=%lld",
      zfs_prop_to_name(ZFS_PROP_RESERVATION),
      (longlong_t)newval);
 }

 dsl_dir_set_reservation_sync_impl(ds->ds_dir, newval, tx);
 dsl_dataset_rele(ds, FTAG);
}
