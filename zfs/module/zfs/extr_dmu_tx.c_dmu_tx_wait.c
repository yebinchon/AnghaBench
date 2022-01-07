
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef scalar_t__ hrtime_t ;
struct TYPE_10__ {scalar_t__ dp_dirty_total; int dp_lock; int dp_spaceavail_cv; int * dp_spa; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_11__ {scalar_t__ dn_assigned_txg; int dn_mtx; int dn_notxholds; } ;
typedef TYPE_3__ dnode_t ;
struct TYPE_12__ {scalar_t__ tx_txg; scalar_t__ tx_lasttried_txg; TYPE_1__* tx_needassign_txh; int tx_dirty_delayed; scalar_t__ tx_wait_dirty; TYPE_2__* tx_pool; } ;
typedef TYPE_4__ dmu_tx_t ;
struct TYPE_9__ {TYPE_3__* txh_dnode; } ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 int B_TRUE ;
 int DMU_TX_STAT_BUMP (int ) ;
 int cv_wait (int *,int *) ;
 int dmu_tx_delay (TYPE_4__*,scalar_t__) ;
 int dmu_tx_dirty_over_max ;
 int dsl_pool_config_held (TYPE_2__*) ;
 scalar_t__ gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_last_synced_txg (int *) ;
 scalar_t__ spa_suspended (int *) ;
 int spa_tx_assign_add_nsecs (int *,scalar_t__) ;
 int txg_wait_synced (TYPE_2__*,scalar_t__) ;
 scalar_t__ zfs_dirty_data_max ;

void
dmu_tx_wait(dmu_tx_t *tx)
{
 spa_t *spa = tx->tx_pool->dp_spa;
 dsl_pool_t *dp = tx->tx_pool;
 hrtime_t before;

 ASSERT(tx->tx_txg == 0);
 ASSERT(!dsl_pool_config_held(tx->tx_pool));

 before = gethrtime();

 if (tx->tx_wait_dirty) {
  uint64_t dirty;






  mutex_enter(&dp->dp_lock);
  if (dp->dp_dirty_total >= zfs_dirty_data_max)
   DMU_TX_STAT_BUMP(dmu_tx_dirty_over_max);
  while (dp->dp_dirty_total >= zfs_dirty_data_max)
   cv_wait(&dp->dp_spaceavail_cv, &dp->dp_lock);
  dirty = dp->dp_dirty_total;
  mutex_exit(&dp->dp_lock);

  dmu_tx_delay(tx, dirty);

  tx->tx_wait_dirty = B_FALSE;







  tx->tx_dirty_delayed = B_TRUE;
 } else if (spa_suspended(spa) || tx->tx_lasttried_txg == 0) {







  txg_wait_synced(dp, spa_last_synced_txg(spa) + 1);
 } else if (tx->tx_needassign_txh) {
  dnode_t *dn = tx->tx_needassign_txh->txh_dnode;

  mutex_enter(&dn->dn_mtx);
  while (dn->dn_assigned_txg == tx->tx_lasttried_txg - 1)
   cv_wait(&dn->dn_notxholds, &dn->dn_mtx);
  mutex_exit(&dn->dn_mtx);
  tx->tx_needassign_txh = ((void*)0);
 } else {





  txg_wait_synced(dp, spa_last_synced_txg(spa) + 1);
 }

 spa_tx_assign_add_nsecs(spa, gethrtime() - before);
}
