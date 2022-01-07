
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_txg; int tx_callbacks; } ;
typedef TYPE_1__ dmu_tx_t ;


 int ASSERT (int) ;
 int ECANCELED ;
 int dmu_tx_destroy (TYPE_1__*) ;
 int dmu_tx_do_callbacks (int *,int ) ;
 int list_is_empty (int *) ;

void
dmu_tx_abort(dmu_tx_t *tx)
{
 ASSERT(tx->tx_txg == 0);




 if (!list_is_empty(&tx->tx_callbacks))
  dmu_tx_do_callbacks(&tx->tx_callbacks, ECANCELED);

 dmu_tx_destroy(tx);
}
