
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* zl_itxg; int zl_spa; } ;
typedef TYPE_2__ zilog_t ;
typedef size_t uint64_t ;
struct TYPE_11__ {size_t itxg_txg; int itxg_lock; TYPE_1__* itxg_itxs; } ;
typedef TYPE_3__ itxg_t ;
struct TYPE_12__ {int ia_list; } ;
typedef TYPE_4__ itx_async_node_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;
struct TYPE_9__ {int i_sync_list; int i_async_tree; } ;


 size_t TXG_CONCURRENT_STATES ;
 size_t TXG_MASK ;
 scalar_t__ UINT64_MAX ;
 size_t ZILTEST_TXG ;
 TYPE_4__* avl_destroy_nodes (int *,void**) ;
 TYPE_4__* avl_find (int *,size_t*,int *) ;
 int kmem_free (TYPE_4__*,int) ;
 int list_destroy (int *) ;
 int list_move_tail (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_freeze_txg (int ) ;
 size_t spa_last_synced_txg (int ) ;

void
zil_async_to_sync(zilog_t *zilog, uint64_t foid)
{
 uint64_t otxg, txg;
 itx_async_node_t *ian;
 avl_tree_t *t;
 avl_index_t where;

 if (spa_freeze_txg(zilog->zl_spa) != UINT64_MAX)
  otxg = ZILTEST_TXG;
 else
  otxg = spa_last_synced_txg(zilog->zl_spa) + 1;





 for (txg = otxg; txg < (otxg + TXG_CONCURRENT_STATES); txg++) {
  itxg_t *itxg = &zilog->zl_itxg[txg & TXG_MASK];

  mutex_enter(&itxg->itxg_lock);
  if (itxg->itxg_txg != txg) {
   mutex_exit(&itxg->itxg_lock);
   continue;
  }







  t = &itxg->itxg_itxs->i_async_tree;
  if (foid != 0) {
   ian = avl_find(t, &foid, &where);
   if (ian != ((void*)0)) {
    list_move_tail(&itxg->itxg_itxs->i_sync_list,
        &ian->ia_list);
   }
  } else {
   void *cookie = ((void*)0);

   while ((ian = avl_destroy_nodes(t, &cookie)) != ((void*)0)) {
    list_move_tail(&itxg->itxg_itxs->i_sync_list,
        &ian->ia_list);
    list_destroy(&ian->ia_list);
    kmem_free(ian, sizeof (itx_async_node_t));
   }
  }
  mutex_exit(&itxg->itxg_lock);
 }
}
