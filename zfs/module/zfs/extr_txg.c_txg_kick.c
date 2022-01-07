
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tx_quiesce_txg_waiting; scalar_t__ tx_open_txg; scalar_t__ tx_sync_txg_waiting; scalar_t__ tx_synced_txg; scalar_t__ tx_quiesced_txg; int tx_sync_lock; int tx_quiesce_more_cv; } ;
typedef TYPE_1__ tx_state_t ;
struct TYPE_8__ {TYPE_1__ dp_tx; } ;
typedef TYPE_2__ dsl_pool_t ;


 int ASSERT (int) ;
 int cv_broadcast (int *) ;
 int dsl_pool_config_held (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int txg_is_quiescing (TYPE_2__*) ;
 int txg_is_syncing (TYPE_2__*) ;

void
txg_kick(dsl_pool_t *dp)
{
 tx_state_t *tx = &dp->dp_tx;

 ASSERT(!dsl_pool_config_held(dp));

 mutex_enter(&tx->tx_sync_lock);
 if (!txg_is_syncing(dp) &&
     !txg_is_quiescing(dp) &&
     tx->tx_quiesce_txg_waiting <= tx->tx_open_txg &&
     tx->tx_sync_txg_waiting <= tx->tx_synced_txg &&
     tx->tx_quiesced_txg <= tx->tx_synced_txg) {
  tx->tx_quiesce_txg_waiting = tx->tx_open_txg + 1;
  cv_broadcast(&tx->tx_quiesce_more_cv);
 }
 mutex_exit(&tx->tx_sync_lock);
}
