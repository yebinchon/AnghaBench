
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dnode_t ;
typedef int dmu_tx_t ;


 int DMU_SPILL_BLKID ;
 int dbuf_free_range (int *,int ,int ,int *) ;

void
dbuf_rm_spill(dnode_t *dn, dmu_tx_t *tx)
{
 dbuf_free_range(dn, DMU_SPILL_BLKID, DMU_SPILL_BLKID, tx);
}
