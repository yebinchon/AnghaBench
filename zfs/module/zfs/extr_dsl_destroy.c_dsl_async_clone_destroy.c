
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_13__ {int spa_livelist_delete_zthr; int spa_livelists_to_delete; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;
struct TYPE_14__ {TYPE_3__* dp_free_dir; TYPE_1__* dp_spa; int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_15__ {int dd_livelist; int dd_object; } ;
typedef TYPE_3__ dsl_dir_t ;
struct TYPE_16__ {TYPE_3__* ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_17__ {int dd_uncompressed_bytes; } ;


 int B_FALSE ;
 int DD_FIELD_LIVELIST ;
 int DD_USED_HEAD ;
 int DMU_OTN_ZAP_METADATA ;
 int DMU_OT_NONE ;
 int DMU_POOL_DELETED_CLONES ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int ENOENT ;
 int VERIFY0 (int) ;
 int dmu_objset_from_ds (TYPE_4__*,int **) ;
 int dmu_objset_zil (int *) ;
 TYPE_2__* dmu_tx_pool (int *) ;
 int dsl_clone_destroy_assert (TYPE_3__*) ;
 int dsl_deadlist_space (int *,int *,int *,int *) ;
 int dsl_dir_diduse_space (TYPE_3__*,int ,int ,int ,int ,int *) ;
 TYPE_6__* dsl_dir_phys (TYPE_3__*) ;
 int dsl_dir_remove_livelist (TYPE_3__*,int *,int ) ;
 int zap_add (int *,int ,int ,int,int,int *,int *) ;
 int zap_add_int (int *,int ,int ,int *) ;
 int zap_create (int *,int ,int ,int ,int *) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;
 int zfs_panic_recover (char*) ;
 int zil_destroy_sync (int ,int *) ;
 int zthr_wakeup (int ) ;

__attribute__((used)) static void
dsl_async_clone_destroy(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 uint64_t zap_obj, to_delete, used, comp, uncomp;
 objset_t *os;
 dsl_dir_t *dd = ds->ds_dir;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 objset_t *mos = dp->dp_meta_objset;
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;
 VERIFY0(dmu_objset_from_ds(ds, &os));


 dsl_clone_destroy_assert(dd);


 zil_destroy_sync(dmu_objset_zil(os), tx);

 VERIFY0(zap_lookup(mos, dd->dd_object,
     DD_FIELD_LIVELIST, sizeof (uint64_t), 1, &to_delete));

 int error = zap_lookup(mos, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_DELETED_CLONES, sizeof (uint64_t), 1, &zap_obj);
 if (error == ENOENT) {
  zap_obj = zap_create(mos, DMU_OTN_ZAP_METADATA,
      DMU_OT_NONE, 0, tx);
  VERIFY0(zap_add(mos, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_DELETED_CLONES, sizeof (uint64_t), 1,
      &(zap_obj), tx));
  spa->spa_livelists_to_delete = zap_obj;
 } else if (error != 0) {
  zfs_panic_recover("zfs: error %d was returned while looking "
      "up DMU_POOL_DELETED_CLONES in the zap");
  return;
 }
 VERIFY0(zap_add_int(mos, zap_obj, to_delete, tx));


 dsl_deadlist_space(&dd->dd_livelist, &used, &comp, &uncomp);
 dsl_dir_diduse_space(dd, DD_USED_HEAD,
     -used, -comp, -dsl_dir_phys(dd)->dd_uncompressed_bytes,
     tx);
 dsl_dir_diduse_space(dp->dp_free_dir, DD_USED_HEAD,
     used, comp, uncomp, tx);
 dsl_dir_remove_livelist(dd, tx, B_FALSE);
 zthr_wakeup(spa->spa_livelist_delete_zthr);
}
