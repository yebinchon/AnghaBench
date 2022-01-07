
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* tx_cpu; int * tx_commit_cb_taskq; int tx_exit_cv; int tx_quiesce_done_cv; int tx_quiesce_more_cv; int tx_sync_done_cv; int tx_sync_more_cv; int tx_sync_lock; int tx_threads; } ;
typedef TYPE_1__ tx_state_t ;
typedef int tx_cpu_t ;
struct TYPE_7__ {TYPE_1__ dp_tx; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_8__ {int * tc_callbacks; int * tc_cv; int tc_lock; int tc_open_lock; } ;


 int ASSERT0 (int ) ;
 int TXG_SIZE ;
 int bzero (TYPE_1__*,int) ;
 int cv_destroy (int *) ;
 int list_destroy (int *) ;
 int max_ncpus ;
 int mutex_destroy (int *) ;
 int taskq_destroy (int *) ;
 int vmem_free (TYPE_3__*,int) ;

void
txg_fini(dsl_pool_t *dp)
{
 tx_state_t *tx = &dp->dp_tx;
 int c;

 ASSERT0(tx->tx_threads);

 mutex_destroy(&tx->tx_sync_lock);

 cv_destroy(&tx->tx_sync_more_cv);
 cv_destroy(&tx->tx_sync_done_cv);
 cv_destroy(&tx->tx_quiesce_more_cv);
 cv_destroy(&tx->tx_quiesce_done_cv);
 cv_destroy(&tx->tx_exit_cv);

 for (c = 0; c < max_ncpus; c++) {
  int i;

  mutex_destroy(&tx->tx_cpu[c].tc_open_lock);
  mutex_destroy(&tx->tx_cpu[c].tc_lock);
  for (i = 0; i < TXG_SIZE; i++) {
   cv_destroy(&tx->tx_cpu[c].tc_cv[i]);
   list_destroy(&tx->tx_cpu[c].tc_callbacks[i]);
  }
 }

 if (tx->tx_commit_cb_taskq != ((void*)0))
  taskq_destroy(tx->tx_commit_cb_taskq);

 vmem_free(tx->tx_cpu, max_ncpus * sizeof (tx_cpu_t));

 bzero(tx, sizeof (tx_state_t));
}
