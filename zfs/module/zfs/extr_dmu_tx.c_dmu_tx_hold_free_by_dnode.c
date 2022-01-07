
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;
typedef int dmu_tx_hold_t ;


 int THT_FREE ;
 int * dmu_tx_hold_dnode_impl (int *,int *,int ,int ,int ) ;
 int dmu_tx_hold_free_impl (int *,int ,int ) ;

void
dmu_tx_hold_free_by_dnode(dmu_tx_t *tx, dnode_t *dn, uint64_t off, uint64_t len)
{
 dmu_tx_hold_t *txh;

 txh = dmu_tx_hold_dnode_impl(tx, dn, THT_FREE, off, len);
 if (txh != ((void*)0))
  (void) dmu_tx_hold_free_impl(txh, off, len);
}
