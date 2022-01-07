
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int dsl_pool_t ;
struct TYPE_7__ {scalar_t__ ds_quota; int ds_dbuf; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_8__ {int ddsqra_value; int ddsqra_source; int ddsqra_name; } ;
typedef TYPE_2__ dsl_dataset_set_qr_arg_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int ZFS_PROP_REFQUOTA ;
 int dmu_buf_will_dirty (int ,int *) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_1__**) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_prop_get_int_ds (TYPE_1__*,int ,scalar_t__*) ;
 int dsl_prop_set_sync_impl (TYPE_1__*,int ,int ,int,int,int *,int *) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static void
dsl_dataset_set_refquota_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_set_qr_arg_t *ddsqra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds = ((void*)0);
 uint64_t newval;

 VERIFY0(dsl_dataset_hold(dp, ddsqra->ddsqra_name, FTAG, &ds));

 dsl_prop_set_sync_impl(ds,
     zfs_prop_to_name(ZFS_PROP_REFQUOTA),
     ddsqra->ddsqra_source, sizeof (ddsqra->ddsqra_value), 1,
     &ddsqra->ddsqra_value, tx);

 VERIFY0(dsl_prop_get_int_ds(ds,
     zfs_prop_to_name(ZFS_PROP_REFQUOTA), &newval));

 if (ds->ds_quota != newval) {
  dmu_buf_will_dirty(ds->ds_dbuf, tx);
  ds->ds_quota = newval;
 }
 dsl_dataset_rele(ds, FTAG);
}
