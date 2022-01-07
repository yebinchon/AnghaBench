
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_5__ {int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;


 int B_FALSE ;
 int B_TRUE ;
 int FTAG ;
 int RW_WRITER ;
 int dnode_hold (int *,int ,int ,TYPE_1__**) ;
 int dnode_new_blkid (TYPE_1__*,int ,int *,int ,int ) ;
 int dnode_rele (TYPE_1__*,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
dmu_object_set_maxblkid(objset_t *os, uint64_t object, uint64_t maxblkid,
    dmu_tx_t *tx)
{
 dnode_t *dn;
 int err;

 err = dnode_hold(os, object, FTAG, &dn);
 if (err)
  return (err);
 rw_enter(&dn->dn_struct_rwlock, RW_WRITER);
 dnode_new_blkid(dn, maxblkid, tx, B_FALSE, B_TRUE);
 rw_exit(&dn->dn_struct_rwlock);
 dnode_rele(dn, FTAG);
 return (0);
}
