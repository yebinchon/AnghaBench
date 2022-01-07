
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_17__ {TYPE_6__* ds; int * spa; } ;
typedef TYPE_3__ try_condense_arg_t ;
typedef int spa_t ;
struct TYPE_18__ {int dd_livelist; int dd_pending_frees; int dd_pending_allocs; TYPE_1__* dd_pool; } ;
typedef TYPE_4__ dsl_dir_t ;
struct TYPE_22__ {TYPE_2__* bpo_phys; } ;
struct TYPE_19__ {TYPE_8__ dle_bpobj; } ;
typedef TYPE_5__ dsl_deadlist_entry_t ;
struct TYPE_20__ {TYPE_4__* ds_dir; } ;
typedef TYPE_6__ dsl_dataset_t ;
struct TYPE_21__ {scalar_t__ tx_txg; } ;
typedef TYPE_7__ dmu_tx_t ;
typedef TYPE_8__ bpobj_t ;
struct TYPE_16__ {scalar_t__ bpo_num_blkptrs; scalar_t__ bpo_num_freed; } ;
struct TYPE_15__ {int * dp_spa; } ;


 int bplist_iterate (int *,int ,int *,TYPE_7__*) ;
 int dsl_deadlist_add_key (int *,scalar_t__,TYPE_7__*) ;
 int dsl_deadlist_insert_alloc_cb ;
 int dsl_deadlist_insert_free_cb ;
 int dsl_deadlist_iterate (int *,int ,TYPE_3__*) ;
 TYPE_5__* dsl_deadlist_last (int *) ;
 int dsl_livelist_try_condense ;
 int spa_sync_pass (int *) ;
 scalar_t__ zfs_livelist_max_entries ;

__attribute__((used)) static void
dsl_flush_pending_livelist(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 dsl_dir_t *dd = ds->ds_dir;
 spa_t *spa = ds->ds_dir->dd_pool->dp_spa;
 dsl_deadlist_entry_t *last = dsl_deadlist_last(&dd->dd_livelist);


 if (last == ((void*)0)) {

  dsl_deadlist_add_key(&dd->dd_livelist,
      tx->tx_txg - 1, tx);
 } else if (spa_sync_pass(spa) == 1) {







  bpobj_t bpobj = last->dle_bpobj;
  uint64_t all = bpobj.bpo_phys->bpo_num_blkptrs;
  uint64_t free = bpobj.bpo_phys->bpo_num_freed;
  uint64_t alloc = all - free;
  if (alloc > zfs_livelist_max_entries) {
   dsl_deadlist_add_key(&dd->dd_livelist,
       tx->tx_txg - 1, tx);
  }
 }


 bplist_iterate(&dd->dd_pending_allocs,
     dsl_deadlist_insert_alloc_cb, &dd->dd_livelist, tx);
 bplist_iterate(&dd->dd_pending_frees,
     dsl_deadlist_insert_free_cb, &dd->dd_livelist, tx);


 try_condense_arg_t arg = {
     .spa = spa,
     .ds = ds
 };
 dsl_deadlist_iterate(&dd->dd_livelist, dsl_livelist_try_condense,
     &arg);
}
