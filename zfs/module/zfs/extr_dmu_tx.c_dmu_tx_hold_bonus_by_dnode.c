
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dnode_t ;
struct TYPE_4__ {int tx_txg; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef int dmu_tx_hold_t ;


 int ASSERT0 (int ) ;
 int THT_BONUS ;
 int dmu_tx_count_dnode (int *) ;
 int * dmu_tx_hold_dnode_impl (TYPE_1__*,int *,int ,int ,int ) ;

void
dmu_tx_hold_bonus_by_dnode(dmu_tx_t *tx, dnode_t *dn)
{
 dmu_tx_hold_t *txh;

 ASSERT0(tx->tx_txg);

 txh = dmu_tx_hold_dnode_impl(tx, dn, THT_BONUS, 0, 0);
 if (txh)
  dmu_tx_count_dnode(txh);
}
