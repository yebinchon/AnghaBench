
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int zio_t ;
struct TYPE_28__ {int zp_nopwrite; } ;
typedef TYPE_4__ zio_prop_t ;
struct TYPE_29__ {int * zgd_bp; scalar_t__ zgd_db; } ;
typedef TYPE_5__ zgd_t ;
typedef int zbookmark_phys_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_30__ {int os_spa; TYPE_7__* os_dsl_dataset; } ;
typedef TYPE_6__ objset_t ;
struct TYPE_31__ {int ds_object; } ;
typedef TYPE_7__ dsl_dataset_t ;
typedef int dnode_t ;
typedef int dmu_sync_cb_t ;
struct TYPE_32__ {int * dsa_tx; TYPE_5__* dsa_zgd; int * dsa_done; TYPE_10__* dsa_dr; } ;
typedef TYPE_8__ dmu_sync_arg_t ;
struct TYPE_25__ {int db_object; } ;
struct TYPE_33__ {int db_mtx; int db_blkid; int * db_blkptr; TYPE_10__* db_last_dirty; int db_level; TYPE_1__ db; TYPE_6__* db_objset; } ;
typedef TYPE_9__ dmu_buf_impl_t ;
struct TYPE_26__ {scalar_t__ dr_override_state; int dr_data; } ;
struct TYPE_27__ {TYPE_2__ dl; } ;
struct TYPE_24__ {scalar_t__ dr_txg; TYPE_3__ dt; struct TYPE_24__* dr_next; } ;
typedef TYPE_10__ dbuf_dirty_record_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int DBUF_IS_L2CACHEABLE (TYPE_9__*) ;
 int * DB_DNODE (TYPE_9__*) ;
 int DB_DNODE_ENTER (TYPE_9__*) ;
 int DB_DNODE_EXIT (TYPE_9__*) ;
 scalar_t__ DR_IN_DMU_SYNC ;
 scalar_t__ DR_NOT_OVERRIDDEN ;
 scalar_t__ DR_OVERRIDDEN ;
 int EALREADY ;
 int EEXIST ;
 int ENOENT ;
 int KM_SLEEP ;
 int SET_BOOKMARK (int *,int ,int ,int ,int ) ;
 int SET_ERROR (int ) ;
 int WP_DMU_SYNC ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_PRIORITY_SYNC_WRITE ;
 int arc_write (int *,int ,scalar_t__,int *,int ,int ,TYPE_4__*,int ,int *,int *,int ,TYPE_8__*,int ,int ,int *) ;
 int dmu_sync_done ;
 int dmu_sync_late_arrival (int *,TYPE_6__*,int *,TYPE_5__*,TYPE_4__*,int *) ;
 int dmu_sync_ready ;
 int dmu_write_policy (TYPE_6__*,int *,int ,int ,TYPE_4__*) ;
 scalar_t__ dnode_block_freed (int *,int ) ;
 TYPE_8__* kmem_alloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_freeze_txg (int ) ;
 scalar_t__ spa_last_synced_txg (int ) ;
 scalar_t__ spa_syncing_txg (int ) ;
 int zio_nowait (int ) ;

int
dmu_sync(zio_t *pio, uint64_t txg, dmu_sync_cb_t *done, zgd_t *zgd)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)zgd->zgd_db;
 objset_t *os = db->db_objset;
 dsl_dataset_t *ds = os->os_dsl_dataset;
 dbuf_dirty_record_t *dr;
 dmu_sync_arg_t *dsa;
 zbookmark_phys_t zb;
 zio_prop_t zp;
 dnode_t *dn;

 ASSERT(pio != ((void*)0));
 ASSERT(txg != 0);

 SET_BOOKMARK(&zb, ds->ds_object,
     db->db.db_object, db->db_level, db->db_blkid);

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);
 dmu_write_policy(os, dn, db->db_level, WP_DMU_SYNC, &zp);
 DB_DNODE_EXIT(db);




 if (txg > spa_freeze_txg(os->os_spa))
  return (dmu_sync_late_arrival(pio, os, done, zgd, &zp, &zb));







 mutex_enter(&db->db_mtx);

 if (txg <= spa_last_synced_txg(os->os_spa)) {



  mutex_exit(&db->db_mtx);
  return (SET_ERROR(EEXIST));
 }

 if (txg <= spa_syncing_txg(os->os_spa)) {




  mutex_exit(&db->db_mtx);
  return (dmu_sync_late_arrival(pio, os, done, zgd, &zp, &zb));
 }

 dr = db->db_last_dirty;
 while (dr && dr->dr_txg != txg)
  dr = dr->dr_next;

 if (dr == ((void*)0)) {




  mutex_exit(&db->db_mtx);
  return (SET_ERROR(ENOENT));
 }

 ASSERT(dr->dr_next == ((void*)0) || dr->dr_next->dr_txg < txg);

 if (db->db_blkptr != ((void*)0)) {
  *zgd->zgd_bp = *db->db_blkptr;
 }
 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);
 if (dr->dr_next != ((void*)0) || dnode_block_freed(dn, db->db_blkid))
  zp.zp_nopwrite = B_FALSE;
 DB_DNODE_EXIT(db);

 ASSERT(dr->dr_txg == txg);
 if (dr->dt.dl.dr_override_state == DR_IN_DMU_SYNC ||
     dr->dt.dl.dr_override_state == DR_OVERRIDDEN) {





  mutex_exit(&db->db_mtx);
  return (SET_ERROR(EALREADY));
 }

 ASSERT(dr->dt.dl.dr_override_state == DR_NOT_OVERRIDDEN);
 dr->dt.dl.dr_override_state = DR_IN_DMU_SYNC;
 mutex_exit(&db->db_mtx);

 dsa = kmem_alloc(sizeof (dmu_sync_arg_t), KM_SLEEP);
 dsa->dsa_dr = dr;
 dsa->dsa_done = done;
 dsa->dsa_zgd = zgd;
 dsa->dsa_tx = ((void*)0);

 zio_nowait(arc_write(pio, os->os_spa, txg,
     zgd->zgd_bp, dr->dt.dl.dr_data, DBUF_IS_L2CACHEABLE(db),
     &zp, dmu_sync_ready, ((void*)0), ((void*)0), dmu_sync_done, dsa,
     ZIO_PRIORITY_SYNC_WRITE, ZIO_FLAG_CANFAIL, &zb));

 return (0);
}
