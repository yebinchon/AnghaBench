
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tx_commit_cb_taskq; } ;
typedef TYPE_1__ tx_state_t ;
struct TYPE_5__ {TYPE_1__ dp_tx; } ;
typedef TYPE_2__ dsl_pool_t ;


 int taskq_wait_outstanding (int *,int ) ;

void
txg_wait_callbacks(dsl_pool_t *dp)
{
 tx_state_t *tx = &dp->dp_tx;

 if (tx->tx_commit_cb_taskq != ((void*)0))
  taskq_wait_outstanding(tx->tx_commit_cb_taskq, 0);
}
