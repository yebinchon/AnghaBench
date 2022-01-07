
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {int dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_11__ {int ds_remap_deadlist; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 scalar_t__ dsl_dataset_get_remap_deadlist_object (TYPE_2__*) ;
 int dsl_dataset_set_remap_deadlist_object (TYPE_2__*,scalar_t__,int *) ;
 int dsl_dataset_unset_remap_deadlist_object (TYPE_2__*,int *) ;
 int dsl_deadlist_close (int *) ;
 int dsl_deadlist_open (int *,int ,scalar_t__) ;
 int dsl_pool_sync_context (TYPE_1__*) ;

__attribute__((used)) static void
dsl_dataset_swap_remap_deadlists(dsl_dataset_t *clone,
    dsl_dataset_t *origin, dmu_tx_t *tx)
{
 uint64_t clone_remap_dl_obj, origin_remap_dl_obj;
 dsl_pool_t *dp = dmu_tx_pool(tx);

 ASSERT(dsl_pool_sync_context(dp));

 clone_remap_dl_obj = dsl_dataset_get_remap_deadlist_object(clone);
 origin_remap_dl_obj = dsl_dataset_get_remap_deadlist_object(origin);

 if (clone_remap_dl_obj != 0) {
  dsl_deadlist_close(&clone->ds_remap_deadlist);
  dsl_dataset_unset_remap_deadlist_object(clone, tx);
 }
 if (origin_remap_dl_obj != 0) {
  dsl_deadlist_close(&origin->ds_remap_deadlist);
  dsl_dataset_unset_remap_deadlist_object(origin, tx);
 }

 if (clone_remap_dl_obj != 0) {
  dsl_dataset_set_remap_deadlist_object(origin,
      clone_remap_dl_obj, tx);
  dsl_deadlist_open(&origin->ds_remap_deadlist,
      dp->dp_meta_objset, clone_remap_dl_obj);
 }
 if (origin_remap_dl_obj != 0) {
  dsl_dataset_set_remap_deadlist_object(clone,
      origin_remap_dl_obj, tx);
  dsl_deadlist_open(&clone->ds_remap_deadlist,
      dp->dp_meta_objset, origin_remap_dl_obj);
 }
}
