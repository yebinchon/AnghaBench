
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;
typedef int boolean_t ;


 scalar_t__ DMU_META_DNODE_OBJECT ;
 int DNODE_MIN_SLOTS ;
 int DNODE_MUST_BE_ALLOCATED ;
 int DNODE_SHIFT ;
 int EBADF ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dnode_hold_impl (int *,scalar_t__,int ,int ,int ,int **) ;
 int dnode_reallocate (int *,int ,int,int ,int,int,int ,int *) ;
 int dnode_rele (int *,int ) ;

int
dmu_object_reclaim_dnsize(objset_t *os, uint64_t object, dmu_object_type_t ot,
    int blocksize, dmu_object_type_t bonustype, int bonuslen, int dnodesize,
    boolean_t keep_spill, dmu_tx_t *tx)
{
 dnode_t *dn;
 int dn_slots = dnodesize >> DNODE_SHIFT;
 int err;

 if (dn_slots == 0)
  dn_slots = DNODE_MIN_SLOTS;

 if (object == DMU_META_DNODE_OBJECT)
  return (SET_ERROR(EBADF));

 err = dnode_hold_impl(os, object, DNODE_MUST_BE_ALLOCATED, 0,
     FTAG, &dn);
 if (err)
  return (err);

 dnode_reallocate(dn, ot, blocksize, bonustype, bonuslen, dn_slots,
     keep_spill, tx);

 dnode_rele(dn, FTAG);
 return (err);
}
