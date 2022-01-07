
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
struct TYPE_6__ {scalar_t__ dn_type; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 scalar_t__ DMU_META_DNODE_OBJECT ;
 int DMU_OBJECT_END ;
 scalar_t__ DMU_OT_NONE ;
 int DNODE_MUST_BE_ALLOCATED ;
 int FTAG ;
 scalar_t__ dmu_tx_private_ok (int *) ;
 int dnode_free (TYPE_1__*,int *) ;
 int dnode_free_range (TYPE_1__*,int ,int ,int *) ;
 int dnode_hold_impl (int *,scalar_t__,int ,int ,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;

int
dmu_object_free(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
 dnode_t *dn;
 int err;

 ASSERT(object != DMU_META_DNODE_OBJECT || dmu_tx_private_ok(tx));

 err = dnode_hold_impl(os, object, DNODE_MUST_BE_ALLOCATED, 0,
     FTAG, &dn);
 if (err)
  return (err);

 ASSERT(dn->dn_type != DMU_OT_NONE);




 dnode_free_range(dn, 0, DMU_OBJECT_END, tx);
 dnode_free(dn, tx);
 dnode_rele(dn, FTAG);

 return (0);
}
