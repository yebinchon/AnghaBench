
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int dn_struct_rwlock; int dn_dbufs_count; TYPE_2__* dn_bonus; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_buf_t ;
struct TYPE_11__ {int db; int db_holds; } ;
typedef TYPE_2__ dmu_buf_impl_t ;


 int DB_RF_MUST_SUCCEED ;
 int DB_RF_NOPREFETCH ;
 int DB_RF_NO_DECRYPT ;
 int DMU_READ_NO_DECRYPT ;
 int DMU_READ_NO_PREFETCH ;
 int RW_READER ;
 int RW_WRITER ;
 int VERIFY (int ) ;
 int atomic_inc_32 (int *) ;
 int dbuf_create_bonus (TYPE_1__*) ;
 int dbuf_read (TYPE_2__*,int *,int) ;
 int dbuf_rele (TYPE_2__*,void*) ;
 int dnode_add_ref (TYPE_1__*,TYPE_2__*) ;
 int dnode_evict_bonus (TYPE_1__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_refcount_add (int *,void*) ;

int dmu_bonus_hold_by_dnode(dnode_t *dn, void *tag, dmu_buf_t **dbp,
    uint32_t flags)
{
 dmu_buf_impl_t *db;
 int error;
 uint32_t db_flags = DB_RF_MUST_SUCCEED;

 if (flags & DMU_READ_NO_PREFETCH)
  db_flags |= DB_RF_NOPREFETCH;
 if (flags & DMU_READ_NO_DECRYPT)
  db_flags |= DB_RF_NO_DECRYPT;

 rw_enter(&dn->dn_struct_rwlock, RW_READER);
 if (dn->dn_bonus == ((void*)0)) {
  rw_exit(&dn->dn_struct_rwlock);
  rw_enter(&dn->dn_struct_rwlock, RW_WRITER);
  if (dn->dn_bonus == ((void*)0))
   dbuf_create_bonus(dn);
 }
 db = dn->dn_bonus;


 if (zfs_refcount_add(&db->db_holds, tag) == 1) {
  VERIFY(dnode_add_ref(dn, db));
  atomic_inc_32(&dn->dn_dbufs_count);
 }






 rw_exit(&dn->dn_struct_rwlock);

 error = dbuf_read(db, ((void*)0), db_flags);
 if (error) {
  dnode_evict_bonus(dn);
  dbuf_rele(db, tag);
  *dbp = ((void*)0);
  return (error);
 }

 *dbp = &db->db;
 return (0);
}
