
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* dd_space_towrite; int dd_dbuf; int dd_lock; int * dd_tempreserved; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_9__ {size_t tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;


 int ASSERT (int ) ;
 int ASSERT0 (int ) ;
 size_t TXG_MASK ;
 int dmu_buf_rele (int ,TYPE_1__*) ;
 int dmu_tx_is_syncing (TYPE_2__*) ;
 int dprintf_dd (TYPE_1__*,char*,size_t,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_dir_sync(dsl_dir_t *dd, dmu_tx_t *tx)
{
 ASSERT(dmu_tx_is_syncing(tx));

 mutex_enter(&dd->dd_lock);
 ASSERT0(dd->dd_tempreserved[tx->tx_txg & TXG_MASK]);
 dprintf_dd(dd, "txg=%llu towrite=%lluK\n", tx->tx_txg,
     dd->dd_space_towrite[tx->tx_txg & TXG_MASK] / 1024);
 dd->dd_space_towrite[tx->tx_txg & TXG_MASK] = 0;
 mutex_exit(&dd->dd_lock);


 dmu_buf_rele(dd->dd_dbuf, dd);
}
