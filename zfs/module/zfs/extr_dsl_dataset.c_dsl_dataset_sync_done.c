
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int * os_next_write_raw; scalar_t__ os_encrypted; int * os_synced_dnodes; } ;
typedef TYPE_1__ objset_t ;
struct TYPE_18__ {int ds_dbuf; TYPE_7__* ds_dir; int ds_deadlist; int ds_pending_deadlist; TYPE_1__* ds_objset; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_19__ {size_t tx_txg; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_20__ {int dd_livelist; } ;


 int ASSERT (int) ;
 int ASSERT0 (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 size_t TXG_MASK ;
 int bplist_iterate (int *,int ,int *,TYPE_3__*) ;
 int dmu_buf_rele (int ,TYPE_2__*) ;
 int dmu_objset_is_dirty (TYPE_1__*,int ) ;
 int dmu_tx_get_txg (TYPE_3__*) ;
 int dsl_bookmark_sync_done (TYPE_2__*,TYPE_3__*) ;
 int dsl_deadlist_insert_alloc_cb ;
 scalar_t__ dsl_deadlist_is_open (int *) ;
 int dsl_dir_remove_livelist (TYPE_7__*,TYPE_3__*,int ) ;
 int dsl_flush_pending_livelist (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ dsl_livelist_should_disable (TYPE_2__*) ;
 int multilist_destroy (int *) ;

void
dsl_dataset_sync_done(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 objset_t *os = ds->ds_objset;

 bplist_iterate(&ds->ds_pending_deadlist,
     dsl_deadlist_insert_alloc_cb, &ds->ds_deadlist, tx);

 if (dsl_deadlist_is_open(&ds->ds_dir->dd_livelist)) {
  dsl_flush_pending_livelist(ds, tx);
  if (dsl_livelist_should_disable(ds)) {
   dsl_dir_remove_livelist(ds->ds_dir, tx, B_TRUE);
  }
 }

 dsl_bookmark_sync_done(ds, tx);

 if (os->os_synced_dnodes != ((void*)0)) {
  multilist_destroy(os->os_synced_dnodes);
  os->os_synced_dnodes = ((void*)0);
 }

 if (os->os_encrypted)
  os->os_next_write_raw[tx->tx_txg & TXG_MASK] = B_FALSE;
 else
  ASSERT0(os->os_next_write_raw[tx->tx_txg & TXG_MASK]);

 ASSERT(!dmu_objset_is_dirty(os, dmu_tx_get_txg(tx)));

 dmu_buf_rele(ds->ds_dbuf, ds);
}
