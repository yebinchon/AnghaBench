
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int zl_spa; TYPE_3__* zl_itxg; int zl_issuer_lock; int zl_itx_commit_list; } ;
typedef TYPE_2__ zilog_t ;
typedef size_t uint64_t ;
typedef int list_t ;
struct TYPE_8__ {size_t itxg_txg; int itxg_lock; TYPE_1__* itxg_itxs; } ;
typedef TYPE_3__ itxg_t ;
struct TYPE_6__ {int i_sync_list; } ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 size_t TXG_CONCURRENT_STATES ;
 size_t TXG_MASK ;
 scalar_t__ UINT64_MAX ;
 size_t ZILTEST_TXG ;
 int list_move_tail (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_freeze_txg (int ) ;
 size_t spa_last_synced_txg (int ) ;
 scalar_t__ zilog_is_dirty_in_txg (TYPE_2__*,size_t) ;

__attribute__((used)) static void
zil_get_commit_list(zilog_t *zilog)
{
 uint64_t otxg, txg;
 list_t *commit_list = &zilog->zl_itx_commit_list;

 ASSERT(MUTEX_HELD(&zilog->zl_issuer_lock));

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
  ASSERT(zilog_is_dirty_in_txg(zilog, txg) ||
      spa_freeze_txg(zilog->zl_spa) != UINT64_MAX);
  list_move_tail(commit_list, &itxg->itxg_itxs->i_sync_list);

  mutex_exit(&itxg->itxg_lock);
 }
}
