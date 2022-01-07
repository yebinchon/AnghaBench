
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dnode_t ;
typedef int dmu_tx_t ;


 int THT_NEWOBJECT ;
 int dmu_tx_hold_dnode_impl (int *,int *,int ,int ,int ) ;
 int dmu_tx_is_syncing (int *) ;

void
dmu_tx_add_new_object(dmu_tx_t *tx, dnode_t *dn)
{




 if (!dmu_tx_is_syncing(tx))
  (void) dmu_tx_hold_dnode_impl(tx, dn, THT_NEWOBJECT, 0, 0);
}
