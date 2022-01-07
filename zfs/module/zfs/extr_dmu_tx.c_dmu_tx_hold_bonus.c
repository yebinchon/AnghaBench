
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ tx_txg; int tx_objset; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef int dmu_tx_hold_t ;


 int ASSERT (int) ;
 int THT_BONUS ;
 int dmu_tx_count_dnode (int *) ;
 int * dmu_tx_hold_object_impl (TYPE_1__*,int ,int ,int ,int ,int ) ;

void
dmu_tx_hold_bonus(dmu_tx_t *tx, uint64_t object)
{
 dmu_tx_hold_t *txh;

 ASSERT(tx->tx_txg == 0);

 txh = dmu_tx_hold_object_impl(tx, tx->tx_objset,
     object, THT_BONUS, 0, 0);
 if (txh)
  dmu_tx_count_dnode(txh);
}
