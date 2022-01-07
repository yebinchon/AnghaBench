
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dsl_pool_t ;
struct TYPE_10__ {int ds_prev; int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_11__ {int ddra_result; int ddra_fsname; } ;
typedef TYPE_2__ dsl_dataset_rollback_arg_t ;
typedef int dmu_tx_t ;


 int DS_CREATE_FLAG_NODIRTY ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_clone_swap_sync_impl (TYPE_1__*,TYPE_1__*,int *) ;
 int dsl_dataset_create_sync (int ,char*,int ,int ,int ,int *,int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_1__**) ;
 int dsl_dataset_hold_obj (int *,int ,int ,TYPE_1__**) ;
 int dsl_dataset_name (int ,char*) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_dataset_zero_zil (TYPE_1__*,int *) ;
 int dsl_destroy_head_sync_impl (TYPE_1__*,int *) ;
 int fnvlist_add_string (int ,char*,char*) ;
 int kcred ;

void
dsl_dataset_rollback_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_rollback_arg_t *ddra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds, *clone;
 uint64_t cloneobj;
 char namebuf[ZFS_MAX_DATASET_NAME_LEN];

 VERIFY0(dsl_dataset_hold(dp, ddra->ddra_fsname, FTAG, &ds));

 dsl_dataset_name(ds->ds_prev, namebuf);
 fnvlist_add_string(ddra->ddra_result, "target", namebuf);

 cloneobj = dsl_dataset_create_sync(ds->ds_dir, "%rollback",
     ds->ds_prev, DS_CREATE_FLAG_NODIRTY, kcred, ((void*)0), tx);

 VERIFY0(dsl_dataset_hold_obj(dp, cloneobj, FTAG, &clone));

 dsl_dataset_clone_swap_sync_impl(clone, ds, tx);
 dsl_dataset_zero_zil(ds, tx);

 dsl_destroy_head_sync_impl(clone, tx);

 dsl_dataset_rele(clone, FTAG);
 dsl_dataset_rele(ds, FTAG);
}
