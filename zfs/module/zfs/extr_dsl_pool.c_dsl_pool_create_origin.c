
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int * dp_origin_snap; int dp_root_dir; int dp_config_rwlock; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_9__ {int ds_prev_snap_obj; } ;


 int ASSERT (int ) ;
 TYPE_1__* FTAG ;
 int ORIGIN_DIR_NAME ;
 int RW_WRITER ;
 int VERIFY0 (int ) ;
 int dmu_tx_is_syncing (int *) ;
 int dsl_dataset_create_sync (int ,int ,int *,int ,int ,int *,int *) ;
 int dsl_dataset_hold_obj (TYPE_1__*,int ,TYPE_1__*,int **) ;
 TYPE_4__* dsl_dataset_phys (int *) ;
 int dsl_dataset_rele (int *,TYPE_1__*) ;
 int dsl_dataset_snapshot_sync_impl (int *,int ,int *) ;
 int kcred ;
 int rrw_held (int *,int ) ;

void
dsl_pool_create_origin(dsl_pool_t *dp, dmu_tx_t *tx)
{
 uint64_t dsobj;
 dsl_dataset_t *ds;

 ASSERT(dmu_tx_is_syncing(tx));
 ASSERT(dp->dp_origin_snap == ((void*)0));
 ASSERT(rrw_held(&dp->dp_config_rwlock, RW_WRITER));


 dsobj = dsl_dataset_create_sync(dp->dp_root_dir, ORIGIN_DIR_NAME,
     ((void*)0), 0, kcred, ((void*)0), tx);
 VERIFY0(dsl_dataset_hold_obj(dp, dsobj, FTAG, &ds));
 dsl_dataset_snapshot_sync_impl(ds, ORIGIN_DIR_NAME, tx);
 VERIFY0(dsl_dataset_hold_obj(dp, dsl_dataset_phys(ds)->ds_prev_snap_obj,
     dp, &dp->dp_origin_snap));
 dsl_dataset_rele(ds, FTAG);
}
