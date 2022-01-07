
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ds_bp_rwlock; TYPE_2__* ds_objset; TYPE_1__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int ds_hold_flags_t ;
struct TYPE_12__ {scalar_t__ drc_resumable; scalar_t__ drc_raw; TYPE_3__* drc_ds; } ;
typedef TYPE_4__ dmu_recv_cookie_t ;
struct TYPE_10__ {int os_raw_receive; } ;
struct TYPE_9__ {int dd_pool; } ;


 int BP_IS_HOLE (int ) ;
 int B_FALSE ;
 int DS_HOLD_FLAG_DECRYPT ;
 int FTAG ;
 int RW_READER ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_recv_tag ;
 int dsl_dataset_disown (TYPE_3__*,int ,int ) ;
 int dsl_dataset_get_blkptr (TYPE_3__*) ;
 int dsl_dataset_name (TYPE_3__*,char*) ;
 int dsl_destroy_head (char*) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int txg_wait_synced (int ,int ) ;

__attribute__((used)) static void
dmu_recv_cleanup_ds(dmu_recv_cookie_t *drc)
{
 dsl_dataset_t *ds = drc->drc_ds;
 ds_hold_flags_t dsflags = (drc->drc_raw) ? 0 : DS_HOLD_FLAG_DECRYPT;
 txg_wait_synced(ds->ds_dir->dd_pool, 0);
 ds->ds_objset->os_raw_receive = B_FALSE;

 rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
 if (drc->drc_resumable && !BP_IS_HOLE(dsl_dataset_get_blkptr(ds))) {
  rrw_exit(&ds->ds_bp_rwlock, FTAG);
  dsl_dataset_disown(ds, dsflags, dmu_recv_tag);
 } else {
  char name[ZFS_MAX_DATASET_NAME_LEN];
  rrw_exit(&ds->ds_bp_rwlock, FTAG);
  dsl_dataset_name(ds, name);
  dsl_dataset_disown(ds, dsflags, dmu_recv_tag);
  (void) dsl_destroy_head(name);
 }
}
