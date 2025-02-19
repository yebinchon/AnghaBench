
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dmu_tx_t ;
typedef int dmu_buf_t ;
struct TYPE_4__ {int db_size; int db_data; } ;
struct TYPE_5__ {scalar_t__ db_state; scalar_t__ db_level; scalar_t__ db_blkid; int db_mtx; int db_changed; scalar_t__ db_freed_in_flight; TYPE_1__ db; } ;
typedef TYPE_2__ dmu_buf_impl_t ;


 int ASSERT (int) ;
 int DBUF_VERIFY (TYPE_2__*) ;
 scalar_t__ DB_CACHED ;
 scalar_t__ DB_FILL ;
 scalar_t__ DMU_BONUS_BLKID ;
 scalar_t__ FALSE ;
 int bzero (int ,int ) ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dmu_buf_fill_done(dmu_buf_t *dbuf, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)dbuf;
 mutex_enter(&db->db_mtx);
 DBUF_VERIFY(db);

 if (db->db_state == DB_FILL) {
  if (db->db_level == 0 && db->db_freed_in_flight) {
   ASSERT(db->db_blkid != DMU_BONUS_BLKID);


   bzero(db->db.db_data, db->db.db_size);
   db->db_freed_in_flight = FALSE;
  }
  db->db_state = DB_CACHED;
  cv_broadcast(&db->db_changed);
 }
 mutex_exit(&db->db_mtx);
}
