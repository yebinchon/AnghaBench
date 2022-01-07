
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * zsda_tx; int zsda_value; int zsda_source; int zsda_name; } ;
typedef TYPE_1__ zvol_set_prop_int_arg_t ;
typedef int dsl_pool_t ;
struct TYPE_7__ {int dd_object; } ;
typedef TYPE_2__ dsl_dir_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 int DS_FIND_CHILDREN ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int ZFS_PROP_SNAPDEV ;
 int dmu_objset_find_dp (int *,int ,int ,TYPE_1__*,int ) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dir_hold (int *,int ,int ,TYPE_2__**,int *) ;
 int dsl_dir_rele (TYPE_2__*,int ) ;
 int dsl_prop_set_sync_impl (int *,int ,int ,int,int,int *,int *) ;
 int zfs_prop_to_name (int ) ;
 int zvol_set_snapdev_sync_cb ;

__attribute__((used)) static void
zvol_set_snapdev_sync(void *arg, dmu_tx_t *tx)
{
 zvol_set_prop_int_arg_t *zsda = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dir_t *dd;
 dsl_dataset_t *ds;
 int error;

 VERIFY0(dsl_dir_hold(dp, zsda->zsda_name, FTAG, &dd, ((void*)0)));
 zsda->zsda_tx = tx;

 error = dsl_dataset_hold(dp, zsda->zsda_name, FTAG, &ds);
 if (error == 0) {
  dsl_prop_set_sync_impl(ds, zfs_prop_to_name(ZFS_PROP_SNAPDEV),
      zsda->zsda_source, sizeof (zsda->zsda_value), 1,
      &zsda->zsda_value, zsda->zsda_tx);
  dsl_dataset_rele(ds, FTAG);
 }
 dmu_objset_find_dp(dp, dd->dd_object, zvol_set_snapdev_sync_cb,
     zsda, DS_FIND_CHILDREN);

 dsl_dir_rele(dd, FTAG);
}
