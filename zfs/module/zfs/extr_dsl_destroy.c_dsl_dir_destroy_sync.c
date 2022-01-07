
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_11__ {int dp_spa; int dp_config_rwlock; int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_12__ {scalar_t__ dd_crypto_obj; int dd_myname; struct TYPE_12__* dd_parent; int dd_object; } ;
typedef TYPE_2__ dsl_dir_t ;
typedef int dmu_tx_t ;
typedef size_t dd_used_t ;
struct TYPE_13__ {scalar_t__ dd_child_dir_zapobj; scalar_t__ dd_props_zapobj; scalar_t__ dd_clones; int dd_deleg_zapobj; int * dd_used_breakdown; int dd_reserved; int dd_used_bytes; int dd_head_dataset_obj; } ;


 int ASSERT (int ) ;
 int ASSERT0 (int ) ;
 int DD_FIELD_FILESYSTEM_COUNT ;
 size_t DD_USED_NUM ;
 int FTAG ;
 int RRW_WRITE_HELD (int *) ;
 int VERIFY0 (int ) ;
 int dmu_object_free_zapified (int *,int ,int *) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_crypto_key_destroy_sync (scalar_t__,int *) ;
 int dsl_deleg_destroy (int *,int ,int *) ;
 int dsl_dir_hold_obj (TYPE_1__*,int ,int *,int ,TYPE_2__**) ;
 TYPE_6__* dsl_dir_phys (TYPE_2__*) ;
 int dsl_dir_rele (TYPE_2__*,int ) ;
 int dsl_dir_set_reservation_sync_impl (TYPE_2__*,int ,int *) ;
 int dsl_fs_ss_count_adjust (TYPE_2__*,int,int ,int *) ;
 int spa_keystore_unload_wkey_impl (int ,int ) ;
 int zap_destroy (int *,scalar_t__,int *) ;
 int zap_remove (int *,scalar_t__,int ,int *) ;

__attribute__((used)) static void
dsl_dir_destroy_sync(uint64_t ddobj, dmu_tx_t *tx)
{
 dsl_dir_t *dd;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 objset_t *mos = dp->dp_meta_objset;
 dd_used_t t;

 ASSERT(RRW_WRITE_HELD(&dmu_tx_pool(tx)->dp_config_rwlock));

 VERIFY0(dsl_dir_hold_obj(dp, ddobj, ((void*)0), FTAG, &dd));

 ASSERT0(dsl_dir_phys(dd)->dd_head_dataset_obj);


 if (dd->dd_parent != ((void*)0))
  dsl_fs_ss_count_adjust(dd->dd_parent, -1,
      DD_FIELD_FILESYSTEM_COUNT, tx);





 dsl_dir_set_reservation_sync_impl(dd, 0, tx);

 ASSERT0(dsl_dir_phys(dd)->dd_used_bytes);
 ASSERT0(dsl_dir_phys(dd)->dd_reserved);
 for (t = 0; t < DD_USED_NUM; t++)
  ASSERT0(dsl_dir_phys(dd)->dd_used_breakdown[t]);

 if (dd->dd_crypto_obj != 0) {
  dsl_crypto_key_destroy_sync(dd->dd_crypto_obj, tx);
  (void) spa_keystore_unload_wkey_impl(dp->dp_spa, dd->dd_object);
 }

 VERIFY0(zap_destroy(mos, dsl_dir_phys(dd)->dd_child_dir_zapobj, tx));
 VERIFY0(zap_destroy(mos, dsl_dir_phys(dd)->dd_props_zapobj, tx));
 if (dsl_dir_phys(dd)->dd_clones != 0)
  VERIFY0(zap_destroy(mos, dsl_dir_phys(dd)->dd_clones, tx));
 VERIFY0(dsl_deleg_destroy(mos, dsl_dir_phys(dd)->dd_deleg_zapobj, tx));
 VERIFY0(zap_remove(mos,
     dsl_dir_phys(dd->dd_parent)->dd_child_dir_zapobj,
     dd->dd_myname, tx));

 dsl_dir_rele(dd, FTAG);
 dmu_object_free_zapified(mos, ddobj, tx);
}
