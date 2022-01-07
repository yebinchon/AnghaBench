
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_initialize_state; int vdev_path; int vdev_initialize_action_time; int vdev_guid; int * vdev_spa; int vdev_initialize_lock; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_initializing_state_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {int dp_mos_dir; } ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int TXG_WAIT ;




 int VERIFY0 (int ) ;
 int ZFS_SPACE_CHECK_NONE ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_dd (int ) ;
 int dsl_sync_task_nowait (TYPE_3__*,int ,int *,int,int ,int *) ;
 int gethrestime_sec () ;
 int * kmem_zalloc (int,int ) ;
 int panic (char*,unsigned long long) ;
 TYPE_3__* spa_get_dsl (int *) ;
 int spa_history_log_internal (int *,char*,int *,char*,int ) ;
 int spa_notify_waiters (int *) ;
 int vdev_initialize_zap_update_sync ;

__attribute__((used)) static void
vdev_initialize_change_state(vdev_t *vd, vdev_initializing_state_t new_state)
{
 ASSERT(MUTEX_HELD(&vd->vdev_initialize_lock));
 spa_t *spa = vd->vdev_spa;

 if (new_state == vd->vdev_initialize_state)
  return;




 uint64_t *guid = kmem_zalloc(sizeof (uint64_t), KM_SLEEP);
 *guid = vd->vdev_guid;




 if (vd->vdev_initialize_state != 128) {
  vd->vdev_initialize_action_time = gethrestime_sec();
 }
 vd->vdev_initialize_state = new_state;

 dmu_tx_t *tx = dmu_tx_create_dd(spa_get_dsl(spa)->dp_mos_dir);
 VERIFY0(dmu_tx_assign(tx, TXG_WAIT));
 dsl_sync_task_nowait(spa_get_dsl(spa), vdev_initialize_zap_update_sync,
     guid, 2, ZFS_SPACE_CHECK_NONE, tx);

 switch (new_state) {
 case 131:
  spa_history_log_internal(spa, "initialize", tx,
      "vdev=%s activated", vd->vdev_path);
  break;
 case 128:
  spa_history_log_internal(spa, "initialize", tx,
      "vdev=%s suspended", vd->vdev_path);
  break;
 case 130:
  spa_history_log_internal(spa, "initialize", tx,
      "vdev=%s canceled", vd->vdev_path);
  break;
 case 129:
  spa_history_log_internal(spa, "initialize", tx,
      "vdev=%s complete", vd->vdev_path);
  break;
 default:
  panic("invalid state %llu", (unsigned long long)new_state);
 }

 dmu_tx_commit(tx);

 if (new_state != 131)
  spa_notify_waiters(spa);
}
