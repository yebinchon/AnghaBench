
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;
typedef int dmu_buf_t ;


 int DMU_READ_PREFETCH ;
 int FALSE ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int dmu_buf_hold_array_by_dnode (int *,int ,int ,int ,int ,int*,int ***,int ) ;
 int dmu_buf_rele_array (int **,int,int ) ;
 int dmu_write_impl (int **,int,int ,int ,void const*,int *) ;

void
dmu_write_by_dnode(dnode_t *dn, uint64_t offset, uint64_t size,
    const void *buf, dmu_tx_t *tx)
{
 dmu_buf_t **dbp;
 int numbufs;

 if (size == 0)
  return;

 VERIFY0(dmu_buf_hold_array_by_dnode(dn, offset, size,
     FALSE, FTAG, &numbufs, &dbp, DMU_READ_PREFETCH));
 dmu_write_impl(dbp, numbufs, offset, size, buf, tx);
 dmu_buf_rele_array(dbp, numbufs, FTAG);
}
