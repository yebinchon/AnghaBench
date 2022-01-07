
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 scalar_t__ DMU_OBJECT_END ;
 int FTAG ;
 scalar_t__ UINT64_MAX ;
 int dnode_free_range (int *,scalar_t__,scalar_t__,int *) ;
 int dnode_hold (int *,scalar_t__,int ,int **) ;
 int dnode_rele (int *,int ) ;

int
dmu_free_range(objset_t *os, uint64_t object, uint64_t offset,
    uint64_t size, dmu_tx_t *tx)
{
 dnode_t *dn;
 int err = dnode_hold(os, object, FTAG, &dn);
 if (err)
  return (err);
 ASSERT(offset < UINT64_MAX);
 ASSERT(size == DMU_OBJECT_END || size <= UINT64_MAX - offset);
 dnode_free_range(dn, offset, size, tx);
 dnode_rele(dn, FTAG);
 return (0);
}
