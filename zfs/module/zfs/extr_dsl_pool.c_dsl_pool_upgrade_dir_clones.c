
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int dp_root_dir_obj; int dp_meta_objset; int dp_free_bpobj; int dp_free_dir; int dp_root_dir; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;
typedef int bpobj_phys_t ;


 int ASSERT (int ) ;
 int DMU_OT_BPOBJ ;
 int DMU_OT_BPOBJ_HDR ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_FREE_BPOBJ ;
 int DS_FIND_CHILDREN ;
 int DS_FIND_SERIALIZE ;
 int FREE_DIR_NAME ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int VERIFY0 (int ) ;
 int bpobj_open (int *,int ,int ) ;
 int dmu_object_alloc (int ,int ,int ,int ,int,int *) ;
 int dmu_objset_find_dp (TYPE_1__*,int ,int ,int *,int) ;
 int dmu_tx_is_syncing (int *) ;
 int dsl_dir_create_sync (TYPE_1__*,int ,int ,int *) ;
 int dsl_pool_open_special_dir (TYPE_1__*,int ,int *) ;
 int upgrade_dir_clones_cb ;
 int zap_add (int ,int ,int ,int,int,int *,int *) ;

void
dsl_pool_upgrade_dir_clones(dsl_pool_t *dp, dmu_tx_t *tx)
{
 uint64_t obj;

 ASSERT(dmu_tx_is_syncing(tx));

 (void) dsl_dir_create_sync(dp, dp->dp_root_dir, FREE_DIR_NAME, tx);
 VERIFY0(dsl_pool_open_special_dir(dp,
     FREE_DIR_NAME, &dp->dp_free_dir));






 obj = dmu_object_alloc(dp->dp_meta_objset, DMU_OT_BPOBJ,
     SPA_OLD_MAXBLOCKSIZE, DMU_OT_BPOBJ_HDR, sizeof (bpobj_phys_t), tx);
 VERIFY0(zap_add(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_FREE_BPOBJ, sizeof (uint64_t), 1, &obj, tx));
 VERIFY0(bpobj_open(&dp->dp_free_bpobj, dp->dp_meta_objset, obj));

 VERIFY0(dmu_objset_find_dp(dp, dp->dp_root_dir_obj,
     upgrade_dir_clones_cb, tx, DS_FIND_CHILDREN | DS_FIND_SERIALIZE));
}
