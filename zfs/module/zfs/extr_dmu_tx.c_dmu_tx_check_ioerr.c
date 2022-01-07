
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zio_t ;
typedef int uint64_t ;
struct TYPE_4__ {int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_buf_impl_t ;


 int DB_RF_CANFAIL ;
 int DB_RF_NOPREFETCH ;
 int EIO ;
 int FTAG ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int * dbuf_hold_level (TYPE_1__*,int,int ,int ) ;
 int dbuf_read (int *,int *,int) ;
 int dbuf_rele (int *,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

__attribute__((used)) static int
dmu_tx_check_ioerr(zio_t *zio, dnode_t *dn, int level, uint64_t blkid)
{
 int err;
 dmu_buf_impl_t *db;

 rw_enter(&dn->dn_struct_rwlock, RW_READER);
 db = dbuf_hold_level(dn, level, blkid, FTAG);
 rw_exit(&dn->dn_struct_rwlock);
 if (db == ((void*)0))
  return (SET_ERROR(EIO));
 err = dbuf_read(db, zio, DB_RF_CANFAIL | DB_RF_NOPREFETCH);
 dbuf_rele(db, FTAG);
 return (err);
}
