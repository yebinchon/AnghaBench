
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dnode_t ;
struct TYPE_4__ {int tx_txg; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef int dmu_tx_hold_t ;


 int ASSERT (int ) ;
 int ASSERT0 (int ) ;
 int THT_ZAP ;
 int * dmu_tx_hold_dnode_impl (TYPE_1__*,int *,int ,int,uintptr_t) ;
 int dmu_tx_hold_zap_impl (int *,char const*) ;

void
dmu_tx_hold_zap_by_dnode(dmu_tx_t *tx, dnode_t *dn, int add, const char *name)
{
 dmu_tx_hold_t *txh;

 ASSERT0(tx->tx_txg);
 ASSERT(dn != ((void*)0));

 txh = dmu_tx_hold_dnode_impl(tx, dn, THT_ZAP, add, (uintptr_t)name);
 if (txh != ((void*)0))
  dmu_tx_hold_zap_impl(txh, name);
}
