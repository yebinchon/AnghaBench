
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef size_t uint64_t ;
typedef int u_longlong_t ;
struct TYPE_33__ {scalar_t__ dn_objset; scalar_t__ dn_nlevels; scalar_t__ dn_dbuf; int dn_mtx; int * dn_dirty_records; } ;
typedef TYPE_7__ dnode_t ;
struct TYPE_34__ {size_t tx_txg; } ;
typedef TYPE_8__ dmu_tx_t ;
struct TYPE_27__ {scalar_t__ db_size; } ;
struct TYPE_35__ {scalar_t__ db_objset; scalar_t__ db_blkid; scalar_t__ db_level; scalar_t__ db_parent; scalar_t__ db_state; scalar_t__ db_dirtycnt; int * db_buf; int db_holds; int * db_blkptr; TYPE_1__ db; TYPE_10__* db_last_dirty; int db_mtx; } ;
typedef TYPE_9__ dmu_buf_impl_t ;
struct TYPE_31__ {int * dr_data; } ;
struct TYPE_32__ {TYPE_5__ dl; } ;
struct TYPE_25__ {size_t dr_txg; TYPE_6__ dt; TYPE_4__* dr_parent; struct TYPE_25__* dr_next; int dr_accounted; TYPE_9__* dr_dbuf; } ;
typedef TYPE_10__ dbuf_dirty_record_t ;
typedef int boolean_t ;
struct TYPE_28__ {int dr_mtx; int dr_children; } ;
struct TYPE_29__ {TYPE_2__ di; } ;
struct TYPE_30__ {TYPE_3__ dt; } ;
struct TYPE_26__ {scalar_t__ dp_meta_objset; } ;


 int ASSERT (int) ;
 int ASSERT0 (scalar_t__) ;
 int B_FALSE ;
 int B_TRUE ;
 TYPE_7__* DB_DNODE (TYPE_9__*) ;
 int DB_DNODE_ENTER (TYPE_9__*) ;
 int DB_DNODE_EXIT (TYPE_9__*) ;
 scalar_t__ DB_NOFILL ;
 scalar_t__ DMU_BONUS_BLKID ;
 scalar_t__ DMU_SPILL_BLKID ;
 int MUTEX_HELD (int *) ;
 size_t TXG_MASK ;
 int arc_buf_destroy (int *,TYPE_9__*) ;
 scalar_t__ arc_released (int *) ;
 int dbuf_destroy (TYPE_9__*) ;
 int dbuf_unoverride (TYPE_10__*) ;
 TYPE_13__* dmu_objset_pool (scalar_t__) ;
 int dmu_objset_spa (scalar_t__) ;
 int dprintf_dbuf (TYPE_9__*,char*,int ) ;
 int dsl_pool_undirty_space (TYPE_13__*,int ,size_t) ;
 int kmem_free (TYPE_10__*,int) ;
 int list_remove (int *,TYPE_10__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 size_t spa_syncing_txg (int ) ;
 scalar_t__ zfs_refcount_remove (int *,void*) ;

__attribute__((used)) static boolean_t
dbuf_undirty(dmu_buf_impl_t *db, dmu_tx_t *tx)
{
 dnode_t *dn;
 uint64_t txg = tx->tx_txg;
 dbuf_dirty_record_t *dr, **drp;

 ASSERT(txg != 0);







 ASSERT(db->db_objset ==
     dmu_objset_pool(db->db_objset)->dp_meta_objset ||
     txg != spa_syncing_txg(dmu_objset_spa(db->db_objset)));
 ASSERT(db->db_blkid != DMU_BONUS_BLKID);
 ASSERT0(db->db_level);
 ASSERT(MUTEX_HELD(&db->db_mtx));




 for (drp = &db->db_last_dirty; (dr = *drp) != ((void*)0); drp = &dr->dr_next)
  if (dr->dr_txg <= txg)
   break;
 if (dr == ((void*)0) || dr->dr_txg < txg)
  return (B_FALSE);
 ASSERT(dr->dr_txg == txg);
 ASSERT(dr->dr_dbuf == db);

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);

 dprintf_dbuf(db, "size=%llx\n", (u_longlong_t)db->db.db_size);

 ASSERT(db->db.db_size != 0);

 dsl_pool_undirty_space(dmu_objset_pool(dn->dn_objset),
     dr->dr_accounted, txg);

 *drp = dr->dr_next;







 if (dr->dr_parent) {
  mutex_enter(&dr->dr_parent->dt.di.dr_mtx);
  list_remove(&dr->dr_parent->dt.di.dr_children, dr);
  mutex_exit(&dr->dr_parent->dt.di.dr_mtx);
 } else if (db->db_blkid == DMU_SPILL_BLKID ||
     db->db_level + 1 == dn->dn_nlevels) {
  ASSERT(db->db_blkptr == ((void*)0) || db->db_parent == dn->dn_dbuf);
  mutex_enter(&dn->dn_mtx);
  list_remove(&dn->dn_dirty_records[txg & TXG_MASK], dr);
  mutex_exit(&dn->dn_mtx);
 }
 DB_DNODE_EXIT(db);

 if (db->db_state != DB_NOFILL) {
  dbuf_unoverride(dr);

  ASSERT(db->db_buf != ((void*)0));
  ASSERT(dr->dt.dl.dr_data != ((void*)0));
  if (dr->dt.dl.dr_data != db->db_buf)
   arc_buf_destroy(dr->dt.dl.dr_data, db);
 }

 kmem_free(dr, sizeof (dbuf_dirty_record_t));

 ASSERT(db->db_dirtycnt > 0);
 db->db_dirtycnt -= 1;

 if (zfs_refcount_remove(&db->db_holds, (void *)(uintptr_t)txg) == 0) {
  ASSERT(db->db_state == DB_NOFILL || arc_released(db->db_buf));
  dbuf_destroy(db);
  return (B_TRUE);
 }

 return (B_FALSE);
}
