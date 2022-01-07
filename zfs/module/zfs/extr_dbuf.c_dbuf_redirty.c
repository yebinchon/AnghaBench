
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ db_object; } ;
struct TYPE_7__ {scalar_t__ db_level; scalar_t__ db_blkid; scalar_t__ db_state; int db_buf; TYPE_1__ db; int db_mtx; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
struct TYPE_8__ {TYPE_2__* dr_dbuf; } ;
typedef TYPE_3__ dbuf_dirty_record_t ;


 int ASSERT (int ) ;
 scalar_t__ DB_NOFILL ;
 scalar_t__ DMU_BONUS_BLKID ;
 scalar_t__ DMU_META_DNODE_OBJECT ;
 int MUTEX_HELD (int *) ;
 int arc_buf_thaw (int ) ;
 int arc_released (int ) ;
 int dbuf_unoverride (TYPE_3__*) ;

__attribute__((used)) static void
dbuf_redirty(dbuf_dirty_record_t *dr)
{
 dmu_buf_impl_t *db = dr->dr_dbuf;

 ASSERT(MUTEX_HELD(&db->db_mtx));

 if (db->db_level == 0 && db->db_blkid != DMU_BONUS_BLKID) {




  dbuf_unoverride(dr);
  if (db->db.db_object != DMU_META_DNODE_OBJECT &&
      db->db_state != DB_NOFILL) {

   ASSERT(arc_released(db->db_buf));
   arc_buf_thaw(db->db_buf);
  }
 }
}
