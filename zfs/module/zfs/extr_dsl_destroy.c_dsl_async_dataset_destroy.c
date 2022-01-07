
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_11__ {scalar_t__ scn_async_destroying; } ;
typedef TYPE_1__ dsl_scan_t ;
struct TYPE_12__ {int dp_free_dir; int dp_bptree_obj; int dp_spa; TYPE_1__* dp_scan; int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_13__ {int ds_dir; int ds_bp_rwlock; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {int ds_prev_snap_txg; int ds_bp; int ds_unique_bytes; } ;
struct TYPE_14__ {int dd_uncompressed_bytes; int dd_compressed_bytes; int dd_used_bytes; } ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int DD_USED_HEAD ;
 int DMU_POOL_BPTREE_OBJ ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DS_UNIQUE_IS_ACCURATE (TYPE_3__*) ;
 int FTAG ;
 int RW_READER ;
 int SPA_FEATURE_ASYNC_DESTROY ;
 int VERIFY0 (int ) ;
 int bptree_add (int *,int ,int *,int ,int ,int ,int ,int *) ;
 int bptree_alloc (int *,int *) ;
 int dmu_objset_from_ds (TYPE_3__*,int **) ;
 int dmu_objset_zil (int *) ;
 TYPE_2__* dmu_tx_pool (int *) ;
 TYPE_5__* dsl_dataset_phys (TYPE_3__*) ;
 int dsl_dir_diduse_space (int ,int ,int ,int ,int ,int *) ;
 TYPE_4__* dsl_dir_phys (int ) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int spa_feature_incr (int ,int ,int *) ;
 int spa_feature_is_active (int ,int ) ;
 int zap_add (int *,int ,int ,int,int,int *,int *) ;
 int zil_destroy_sync (int ,int *) ;

__attribute__((used)) static void
dsl_async_dataset_destroy(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 uint64_t used, comp, uncomp;
 objset_t *os;

 VERIFY0(dmu_objset_from_ds(ds, &os));
 dsl_pool_t *dp = dmu_tx_pool(tx);
 objset_t *mos = dp->dp_meta_objset;

 zil_destroy_sync(dmu_objset_zil(os), tx);

 if (!spa_feature_is_active(dp->dp_spa,
     SPA_FEATURE_ASYNC_DESTROY)) {
  dsl_scan_t *scn = dp->dp_scan;
  spa_feature_incr(dp->dp_spa, SPA_FEATURE_ASYNC_DESTROY,
      tx);
  dp->dp_bptree_obj = bptree_alloc(mos, tx);
  VERIFY0(zap_add(mos,
      DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_BPTREE_OBJ, sizeof (uint64_t), 1,
      &dp->dp_bptree_obj, tx));
  ASSERT(!scn->scn_async_destroying);
  scn->scn_async_destroying = B_TRUE;
 }

 used = dsl_dir_phys(ds->ds_dir)->dd_used_bytes;
 comp = dsl_dir_phys(ds->ds_dir)->dd_compressed_bytes;
 uncomp = dsl_dir_phys(ds->ds_dir)->dd_uncompressed_bytes;

 ASSERT(!DS_UNIQUE_IS_ACCURATE(ds) ||
     dsl_dataset_phys(ds)->ds_unique_bytes == used);

 rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
 bptree_add(mos, dp->dp_bptree_obj,
     &dsl_dataset_phys(ds)->ds_bp,
     dsl_dataset_phys(ds)->ds_prev_snap_txg,
     used, comp, uncomp, tx);
 rrw_exit(&ds->ds_bp_rwlock, FTAG);
 dsl_dir_diduse_space(ds->ds_dir, DD_USED_HEAD,
     -used, -comp, -uncomp, tx);
 dsl_dir_diduse_space(dp->dp_free_dir, DD_USED_HEAD,
     used, comp, uncomp, tx);
}
