
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vdev_trim_state_t ;
struct TYPE_6__ {int vdev_trim_state; scalar_t__ vdev_guid; int vdev_path; void* vdev_trim_secure; void* vdev_trim_partial; void* vdev_trim_rate; void* vdev_trim_last_offset; int vdev_trim_action_time; int * vdev_spa; int vdev_trim_lock; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {int dp_mos_dir; } ;


 int ASSERT (int ) ;
 int ESC_ZFS_TRIM_CANCEL ;
 int ESC_ZFS_TRIM_FINISH ;
 int ESC_ZFS_TRIM_RESUME ;
 int ESC_ZFS_TRIM_START ;
 int ESC_ZFS_TRIM_SUSPEND ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int TXG_WAIT ;
 void* UINT64_MAX ;




 int VERIFY0 (int ) ;
 int ZFS_SPACE_CHECK_NONE ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_dd (int ) ;
 int dsl_sync_task_nowait (TYPE_3__*,int ,scalar_t__*,int,int ,int *) ;
 int gethrestime_sec () ;
 scalar_t__* kmem_zalloc (int,int ) ;
 int panic (char*,unsigned long long) ;
 int spa_event_notify (int *,TYPE_1__*,int *,int ) ;
 TYPE_3__* spa_get_dsl (int *) ;
 int spa_history_log_internal (int *,char*,int *,char*,int ) ;
 int vdev_trim_zap_update_sync ;

__attribute__((used)) static void
vdev_trim_change_state(vdev_t *vd, vdev_trim_state_t new_state,
    uint64_t rate, boolean_t partial, boolean_t secure)
{
 ASSERT(MUTEX_HELD(&vd->vdev_trim_lock));
 spa_t *spa = vd->vdev_spa;

 if (new_state == vd->vdev_trim_state)
  return;




 uint64_t *guid = kmem_zalloc(sizeof (uint64_t), KM_SLEEP);
 *guid = vd->vdev_guid;




 if (vd->vdev_trim_state != 128) {
  vd->vdev_trim_action_time = gethrestime_sec();
 }






 if (new_state == 131) {
  if (vd->vdev_trim_state == 129 ||
      vd->vdev_trim_state == 130) {
   vd->vdev_trim_last_offset = UINT64_MAX;
   vd->vdev_trim_rate = UINT64_MAX;
   vd->vdev_trim_partial = UINT64_MAX;
   vd->vdev_trim_secure = UINT64_MAX;
  }

  if (rate != 0)
   vd->vdev_trim_rate = rate;

  if (partial != 0)
   vd->vdev_trim_partial = partial;

  if (secure != 0)
   vd->vdev_trim_secure = secure;
 }

 boolean_t resumed = !!(vd->vdev_trim_state == 128);
 vd->vdev_trim_state = new_state;

 dmu_tx_t *tx = dmu_tx_create_dd(spa_get_dsl(spa)->dp_mos_dir);
 VERIFY0(dmu_tx_assign(tx, TXG_WAIT));
 dsl_sync_task_nowait(spa_get_dsl(spa), vdev_trim_zap_update_sync,
     guid, 2, ZFS_SPACE_CHECK_NONE, tx);

 switch (new_state) {
 case 131:
  spa_event_notify(spa, vd, ((void*)0),
      resumed ? ESC_ZFS_TRIM_RESUME : ESC_ZFS_TRIM_START);
  spa_history_log_internal(spa, "trim", tx,
      "vdev=%s activated", vd->vdev_path);
  break;
 case 128:
  spa_event_notify(spa, vd, ((void*)0), ESC_ZFS_TRIM_SUSPEND);
  spa_history_log_internal(spa, "trim", tx,
      "vdev=%s suspended", vd->vdev_path);
  break;
 case 130:
  spa_event_notify(spa, vd, ((void*)0), ESC_ZFS_TRIM_CANCEL);
  spa_history_log_internal(spa, "trim", tx,
      "vdev=%s canceled", vd->vdev_path);
  break;
 case 129:
  spa_event_notify(spa, vd, ((void*)0), ESC_ZFS_TRIM_FINISH);
  spa_history_log_internal(spa, "trim", tx,
      "vdev=%s complete", vd->vdev_path);
  break;
 default:
  panic("invalid state %llu", (unsigned long long)new_state);
 }

 dmu_tx_commit(tx);
}
