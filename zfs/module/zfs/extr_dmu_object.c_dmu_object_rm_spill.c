
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_8__ {int dn_struct_rwlock; TYPE_1__* dn_phys; } ;
typedef TYPE_2__ dnode_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {int dn_flags; } ;


 int DNODE_FLAG_SPILL_BLKPTR ;
 int DNODE_MUST_BE_ALLOCATED ;
 int FTAG ;
 int RW_WRITER ;
 int dbuf_rm_spill (TYPE_2__*,int *) ;
 int dnode_hold_impl (int *,int ,int ,int ,int ,TYPE_2__**) ;
 int dnode_rele (TYPE_2__*,int ) ;
 int dnode_rm_spill (TYPE_2__*,int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
dmu_object_rm_spill(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
 dnode_t *dn;
 int err;

 err = dnode_hold_impl(os, object, DNODE_MUST_BE_ALLOCATED, 0,
     FTAG, &dn);
 if (err)
  return (err);

 rw_enter(&dn->dn_struct_rwlock, RW_WRITER);
 if (dn->dn_phys->dn_flags & DNODE_FLAG_SPILL_BLKPTR) {
  dbuf_rm_spill(dn, tx);
  dnode_rm_spill(dn, tx);
 }
 rw_exit(&dn->dn_struct_rwlock);

 dnode_rele(dn, FTAG);
 return (err);
}
