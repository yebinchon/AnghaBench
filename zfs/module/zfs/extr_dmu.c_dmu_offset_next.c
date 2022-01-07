
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_5__ {int * dn_dirty_link; } ;
typedef TYPE_1__ dnode_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DNODE_FIND_HOLE ;
 int EBUSY ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int TXG_SIZE ;
 int dmu_objset_pool (int *) ;
 int dnode_hold (int *,int ,int ,TYPE_1__**) ;
 int dnode_next_offset (TYPE_1__*,int ,int *,int,int,int ) ;
 int dnode_rele (TYPE_1__*,int ) ;
 scalar_t__ multilist_link_active (int *) ;
 int txg_wait_synced (int ,int ) ;
 scalar_t__ zfs_dmu_offset_next_sync ;

int
dmu_offset_next(objset_t *os, uint64_t object, boolean_t hole, uint64_t *off)
{
 dnode_t *dn;
 int i, err;
 boolean_t clean = B_TRUE;

 err = dnode_hold(os, object, FTAG, &dn);
 if (err)
  return (err);




 for (i = 0; i < TXG_SIZE; i++) {
  if (multilist_link_active(&dn->dn_dirty_link[i])) {
   clean = B_FALSE;
   break;
  }
 }





 if (!clean && zfs_dmu_offset_next_sync) {
  clean = B_TRUE;
  dnode_rele(dn, FTAG);
  txg_wait_synced(dmu_objset_pool(os), 0);
  err = dnode_hold(os, object, FTAG, &dn);
  if (err)
   return (err);
 }

 if (clean)
  err = dnode_next_offset(dn,
      (hole ? DNODE_FIND_HOLE : 0), off, 1, 1, 0);
 else
  err = SET_ERROR(EBUSY);

 dnode_rele(dn, FTAG);

 return (err);
}
