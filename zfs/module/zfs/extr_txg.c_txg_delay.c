
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int tx_open_txg; int tx_syncing_txg; int tx_synced_txg; int tx_sync_lock; int tx_quiesce_more_cv; } ;
typedef TYPE_1__ tx_state_t ;
typedef scalar_t__ hrtime_t ;
struct TYPE_6__ {TYPE_1__ dp_tx; } ;
typedef TYPE_2__ dsl_pool_t ;


 int DMU_TX_STAT_BUMP (int ) ;
 int cv_timedwait_hires (int *,int *,scalar_t__,scalar_t__,int ) ;
 int dmu_tx_delay ;
 scalar_t__ gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int txg_stalled (TYPE_2__*) ;

void
txg_delay(dsl_pool_t *dp, uint64_t txg, hrtime_t delay, hrtime_t resolution)
{
 tx_state_t *tx = &dp->dp_tx;
 hrtime_t start = gethrtime();


 if (tx->tx_open_txg > txg ||
     tx->tx_syncing_txg == txg-1 || tx->tx_synced_txg == txg-1)
  return;

 mutex_enter(&tx->tx_sync_lock);
 if (tx->tx_open_txg > txg || tx->tx_synced_txg == txg-1) {
  mutex_exit(&tx->tx_sync_lock);
  return;
 }

 while (gethrtime() - start < delay &&
     tx->tx_syncing_txg < txg-1 && !txg_stalled(dp)) {
  (void) cv_timedwait_hires(&tx->tx_quiesce_more_cv,
      &tx->tx_sync_lock, delay, resolution, 0);
 }

 DMU_TX_STAT_BUMP(dmu_tx_delay);

 mutex_exit(&tx->tx_sync_lock);
}
