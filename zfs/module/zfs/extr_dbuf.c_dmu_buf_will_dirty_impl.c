
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {scalar_t__ tx_txg; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef int dmu_buf_t ;
struct TYPE_15__ {scalar_t__ db_state; int db_mtx; TYPE_3__* db_last_dirty; int db_holds; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
struct TYPE_16__ {scalar_t__ dr_txg; struct TYPE_16__* dr_next; } ;
typedef TYPE_3__ dbuf_dirty_record_t ;
struct TYPE_13__ {int dn_struct_rwlock; } ;


 int ASSERT (int) ;
 scalar_t__ DB_CACHED ;
 TYPE_11__* DB_DNODE (TYPE_2__*) ;
 int DB_DNODE_ENTER (TYPE_2__*) ;
 int DB_DNODE_EXIT (TYPE_2__*) ;
 int DB_RF_HAVESTRUCT ;
 scalar_t__ RW_WRITE_HELD (int *) ;
 int dbuf_dirty (TYPE_2__*,TYPE_1__*) ;
 int dbuf_read (TYPE_2__*,int *,int) ;
 int dbuf_redirty (TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_is_zero (int *) ;

__attribute__((used)) static void
dmu_buf_will_dirty_impl(dmu_buf_t *db_fake, int flags, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

 ASSERT(tx->tx_txg != 0);
 ASSERT(!zfs_refcount_is_zero(&db->db_holds));







 mutex_enter(&db->db_mtx);

 dbuf_dirty_record_t *dr;
 for (dr = db->db_last_dirty;
     dr != ((void*)0) && dr->dr_txg >= tx->tx_txg; dr = dr->dr_next) {





  if (dr->dr_txg == tx->tx_txg && db->db_state == DB_CACHED) {

   dbuf_redirty(dr);
   mutex_exit(&db->db_mtx);
   return;
  }
 }
 mutex_exit(&db->db_mtx);

 DB_DNODE_ENTER(db);
 if (RW_WRITE_HELD(&DB_DNODE(db)->dn_struct_rwlock))
  flags |= DB_RF_HAVESTRUCT;
 DB_DNODE_EXIT(db);
 (void) dbuf_read(db, ((void*)0), flags);
 (void) dbuf_dirty(db, tx);
}
