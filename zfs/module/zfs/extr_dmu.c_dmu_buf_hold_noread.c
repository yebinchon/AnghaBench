
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_8__ {int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_buf_t ;
struct TYPE_9__ {int db; } ;
typedef TYPE_2__ dmu_buf_impl_t ;


 int EIO ;
 int FTAG ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 TYPE_2__* dbuf_hold (TYPE_1__*,int ,void*) ;
 int dbuf_whichblock (TYPE_1__*,int ,int ) ;
 int dnode_hold (int *,int ,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
dmu_buf_hold_noread(objset_t *os, uint64_t object, uint64_t offset,
    void *tag, dmu_buf_t **dbp)
{
 dnode_t *dn;
 uint64_t blkid;
 dmu_buf_impl_t *db;
 int err;

 err = dnode_hold(os, object, FTAG, &dn);
 if (err)
  return (err);
 rw_enter(&dn->dn_struct_rwlock, RW_READER);
 blkid = dbuf_whichblock(dn, 0, offset);
 db = dbuf_hold(dn, blkid, tag);
 rw_exit(&dn->dn_struct_rwlock);
 dnode_rele(dn, FTAG);

 if (db == ((void*)0)) {
  *dbp = ((void*)0);
  return (SET_ERROR(EIO));
 }

 *dbp = &db->db;
 return (err);
}
