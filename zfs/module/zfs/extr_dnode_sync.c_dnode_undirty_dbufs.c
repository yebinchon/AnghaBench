
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int list_t ;
struct TYPE_14__ {scalar_t__ db_level; int db_dirtycnt; scalar_t__ db_blkid; scalar_t__ db_buf; TYPE_5__* db_last_dirty; int db_mtx; } ;
typedef TYPE_4__ dmu_buf_impl_t ;
struct TYPE_12__ {int dr_children; int dr_mtx; } ;
struct TYPE_11__ {scalar_t__ dr_data; } ;
struct TYPE_13__ {TYPE_2__ di; TYPE_1__ dl; } ;
struct TYPE_15__ {TYPE_3__ dt; scalar_t__ dr_txg; TYPE_4__* dr_dbuf; } ;
typedef TYPE_5__ dbuf_dirty_record_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 scalar_t__ DMU_BONUS_BLKID ;
 int dbuf_rele_and_unlock (TYPE_4__*,void*,int ) ;
 int dbuf_unoverride (TYPE_5__*) ;
 int kmem_free (TYPE_5__*,int) ;
 int list_destroy (int *) ;
 TYPE_5__* list_head (int *) ;
 int list_remove (int *,TYPE_5__*) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;

__attribute__((used)) static void
dnode_undirty_dbufs(list_t *list)
{
 dbuf_dirty_record_t *dr;

 while ((dr = list_head(list))) {
  dmu_buf_impl_t *db = dr->dr_dbuf;
  uint64_t txg = dr->dr_txg;

  if (db->db_level != 0)
   dnode_undirty_dbufs(&dr->dt.di.dr_children);

  mutex_enter(&db->db_mtx);

  list_remove(list, dr);
  ASSERT(db->db_last_dirty == dr);
  db->db_last_dirty = ((void*)0);
  db->db_dirtycnt -= 1;
  if (db->db_level == 0) {
   ASSERT(db->db_blkid == DMU_BONUS_BLKID ||
       dr->dt.dl.dr_data == db->db_buf);
   dbuf_unoverride(dr);
  } else {
   mutex_destroy(&dr->dt.di.dr_mtx);
   list_destroy(&dr->dt.di.dr_children);
  }
  kmem_free(dr, sizeof (dbuf_dirty_record_t));
  dbuf_rele_and_unlock(db, (void *)(uintptr_t)txg, B_FALSE);
 }
}
