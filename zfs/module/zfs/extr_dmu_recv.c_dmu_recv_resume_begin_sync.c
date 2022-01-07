
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int recvname ;
typedef int dsl_pool_t ;
struct TYPE_9__ {int ds_bp_rwlock; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int ds_hold_flags_t ;
typedef int dmu_tx_t ;
struct TYPE_10__ {TYPE_1__* drba_cookie; } ;
typedef TYPE_3__ dmu_recv_begin_arg_t ;
struct TYPE_8__ {char* drc_tofs; int drc_featureflags; TYPE_2__* drc_ds; void* drc_raw; void* drc_newfs; } ;


 int ASSERT (int) ;
 int BP_IS_HOLE (int ) ;
 void* B_TRUE ;
 int DMU_BACKUP_FEATURE_RAW ;
 int DS_HOLD_FLAG_DECRYPT ;
 int DS_IS_INCONSISTENT (TYPE_2__*) ;
 int FTAG ;
 int RW_READER ;
 int VERIFY0 (scalar_t__) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_recv_tag ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_get_blkptr (TYPE_2__*) ;
 scalar_t__ dsl_dataset_own_force (int *,char const*,int ,int ,TYPE_2__**) ;
 char* recv_clone_name ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int spa_history_log_internal_ds (TYPE_2__*,char*,int *,char*) ;

__attribute__((used)) static void
dmu_recv_resume_begin_sync(void *arg, dmu_tx_t *tx)
{
 dmu_recv_begin_arg_t *drba = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 const char *tofs = drba->drba_cookie->drc_tofs;
 uint64_t featureflags = drba->drba_cookie->drc_featureflags;
 dsl_dataset_t *ds;
 ds_hold_flags_t dsflags = 0;

 char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];

 (void) snprintf(recvname, sizeof (recvname), "%s/%s", tofs,
     recv_clone_name);

 if (featureflags & DMU_BACKUP_FEATURE_RAW) {
  drba->drba_cookie->drc_raw = B_TRUE;
 } else {
  dsflags |= DS_HOLD_FLAG_DECRYPT;
 }

 if (dsl_dataset_own_force(dp, recvname, dsflags, dmu_recv_tag, &ds)
     != 0) {

  VERIFY0(dsl_dataset_own_force(dp, tofs, dsflags, dmu_recv_tag,
      &ds));
  drba->drba_cookie->drc_newfs = B_TRUE;
 }

 ASSERT(DS_IS_INCONSISTENT(ds));
 rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
 ASSERT(!BP_IS_HOLE(dsl_dataset_get_blkptr(ds)) ||
     drba->drba_cookie->drc_raw);
 rrw_exit(&ds->ds_bp_rwlock, FTAG);

 drba->drba_cookie->drc_ds = ds;

 spa_history_log_internal_ds(ds, "resume receive", tx, " ");
}
