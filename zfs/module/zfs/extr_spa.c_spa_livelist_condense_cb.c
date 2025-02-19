
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zthr_t ;
typedef void* uint64_t ;
struct TYPE_14__ {TYPE_1__* ds; int syncing; TYPE_5__* next; TYPE_5__* first; } ;
struct TYPE_15__ {TYPE_2__ spa_to_condense; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_16__ {int to_keep; void* next_size; void* first_size; TYPE_3__* spa; } ;
typedef TYPE_4__ livelist_condense_arg_t ;
struct TYPE_17__ {int dle_bpobj; } ;
typedef TYPE_5__ dsl_deadlist_entry_t ;
typedef int dmu_tx_t ;
struct TYPE_18__ {int dp_mos_dir; } ;
struct TYPE_13__ {int ds_dbuf; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int EINTR ;
 int KM_SLEEP ;
 int TXG_NOTHROTTLE ;
 int TXG_NOWAIT ;
 int ZFS_SPACE_CHECK_NONE ;
 int bplist_clear (int *) ;
 int bplist_create (int *) ;
 int bplist_destroy (int *) ;
 int delay (int) ;
 int dmu_buf_rele (int ,TYPE_3__*) ;
 int dmu_tx_assign (int *,int) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_dd (int ) ;
 int dmu_tx_hold_space (int *,int) ;
 int dmu_tx_mark_netfree (int *) ;
 int dsl_process_sub_livelist (int *,int *,int *,void**) ;
 int dsl_sync_task_nowait (TYPE_6__*,int ,TYPE_4__*,int ,int ,int *) ;
 TYPE_4__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_4__*,int) ;
 TYPE_6__* spa_get_dsl (TYPE_3__*) ;
 int spa_livelist_condense_sync ;
 scalar_t__ zfs_livelist_condense_sync_pause ;
 int zfs_livelist_condense_zthr_cancel ;
 scalar_t__ zfs_livelist_condense_zthr_pause ;
 scalar_t__ zthr_has_waiters (int *) ;
 scalar_t__ zthr_iscancelled (int *) ;

void
spa_livelist_condense_cb(void *arg, zthr_t *t)
{
 while (zfs_livelist_condense_zthr_pause &&
     !(zthr_has_waiters(t) || zthr_iscancelled(t)))
  delay(1);

 spa_t *spa = arg;
 dsl_deadlist_entry_t *first = spa->spa_to_condense.first;
 dsl_deadlist_entry_t *next = spa->spa_to_condense.next;
 uint64_t first_size, next_size;

 livelist_condense_arg_t *lca =
     kmem_alloc(sizeof (livelist_condense_arg_t), KM_SLEEP);
 bplist_create(&lca->to_keep);
 int err = dsl_process_sub_livelist(&first->dle_bpobj, &lca->to_keep, t,
     &first_size);
 if (err == 0)
  err = dsl_process_sub_livelist(&next->dle_bpobj, &lca->to_keep,
      t, &next_size);

 if (err == 0) {
  while (zfs_livelist_condense_sync_pause &&
      !(zthr_has_waiters(t) || zthr_iscancelled(t)))
   delay(1);

  dmu_tx_t *tx = dmu_tx_create_dd(spa_get_dsl(spa)->dp_mos_dir);
  dmu_tx_mark_netfree(tx);
  dmu_tx_hold_space(tx, 1);
  err = dmu_tx_assign(tx, TXG_NOWAIT | TXG_NOTHROTTLE);
  if (err == 0) {




   spa->spa_to_condense.syncing = B_TRUE;
   lca->spa = spa;
   lca->first_size = first_size;
   lca->next_size = next_size;
   dsl_sync_task_nowait(spa_get_dsl(spa),
       spa_livelist_condense_sync, lca, 0,
       ZFS_SPACE_CHECK_NONE, tx);
   dmu_tx_commit(tx);
   return;
  }
 }






 ASSERT(err != 0);
 bplist_clear(&lca->to_keep);
 bplist_destroy(&lca->to_keep);
 kmem_free(lca, sizeof (livelist_condense_arg_t));
 dmu_buf_rele(spa->spa_to_condense.ds->ds_dbuf, spa);
 spa->spa_to_condense.ds = ((void*)0);
 if (err == EINTR)
  zfs_livelist_condense_zthr_cancel++;
}
