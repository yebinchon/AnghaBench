
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_exit_cv; int tx_threads; } ;
typedef TYPE_1__ tx_state_t ;
typedef int kthread_t ;
typedef int callb_cpr_t ;


 int ASSERT (int ) ;
 int CALLB_CPR_EXIT (int *) ;
 int cv_broadcast (int *) ;
 int thread_exit () ;

__attribute__((used)) static void
txg_thread_exit(tx_state_t *tx, callb_cpr_t *cpr, kthread_t **tpp)
{
 ASSERT(*tpp != ((void*)0));
 *tpp = ((void*)0);
 tx->tx_threads--;
 cv_broadcast(&tx->tx_exit_cv);
 CALLB_CPR_EXIT(cpr);
 thread_exit();
}
