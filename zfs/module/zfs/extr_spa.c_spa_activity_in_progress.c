
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int zpool_wait_activity_t ;
typedef int uint64_t ;
struct TYPE_15__ {int sr_state; } ;
struct TYPE_18__ {TYPE_2__* spa_dsl_pool; TYPE_1__ spa_removing_phys; int spa_root_vdev; int spa_activities_lock; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_17__ {int scn_state; int scn_func; } ;
struct TYPE_19__ {TYPE_3__ scn_phys; } ;
typedef TYPE_5__ dsl_scan_t ;
typedef int boolean_t ;
struct TYPE_16__ {TYPE_5__* dp_scan; int dp_free_bpobj; } ;


 int ASSERT (int ) ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_ZPOOL_CHECKPOINT ;
 int DSS_SCANNING ;
 int ENOENT ;
 int FTAG ;
 int MUTEX_HELD (int *) ;
 int POOL_SCAN_SCRUB ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SCL_STATE ;
 int SPA_FEATURE_ASYNC_DESTROY ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int SPA_VERSION_DEADLISTS ;







 int bpobj_is_empty (int *) ;
 int dsl_scan_is_paused_scrub (TYPE_5__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int panic (char*,int) ;
 int spa_config_enter (TYPE_4__*,int,int ,int ) ;
 int spa_config_exit (TYPE_4__*,int,int ) ;
 int spa_feature_is_active (TYPE_4__*,int ) ;
 int spa_livelist_delete_check (TYPE_4__*) ;
 int spa_meta_objset (TYPE_4__*) ;
 int spa_vdev_initializing (TYPE_4__*,int,int ,int*) ;
 int spa_version (TYPE_4__*) ;
 int vdev_replace_in_progress (int ) ;
 int zap_contains (int ,int ,int ) ;

__attribute__((used)) static int
spa_activity_in_progress(spa_t *spa, zpool_wait_activity_t activity,
    boolean_t use_tag, uint64_t tag, boolean_t *in_progress)
{
 int error = 0;

 ASSERT(MUTEX_HELD(&spa->spa_activities_lock));

 switch (activity) {
 case 134:
  *in_progress =
      (spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT) &&
      zap_contains(spa_meta_objset(spa),
      DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_ZPOOL_CHECKPOINT) ==
      ENOENT);
  break;
 case 133:
  *in_progress = ((spa_version(spa) >= SPA_VERSION_DEADLISTS &&
      !bpobj_is_empty(&spa->spa_dsl_pool->dp_free_bpobj)) ||
      spa_feature_is_active(spa, SPA_FEATURE_ASYNC_DESTROY) ||
      spa_livelist_delete_check(spa));
  break;
 case 132:
  error = spa_vdev_initializing(spa, use_tag, tag, in_progress);
  break;
 case 130:
  mutex_exit(&spa->spa_activities_lock);
  spa_config_enter(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);
  mutex_enter(&spa->spa_activities_lock);

  *in_progress = vdev_replace_in_progress(spa->spa_root_vdev);
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  break;
 case 131:
  *in_progress = (spa->spa_removing_phys.sr_state ==
      DSS_SCANNING);
  break;
 case 129:
 case 128:
 {
  boolean_t scanning, paused, is_scrub;
  dsl_scan_t *scn = spa->spa_dsl_pool->dp_scan;

  is_scrub = (scn->scn_phys.scn_func == POOL_SCAN_SCRUB);
  scanning = (scn->scn_phys.scn_state == DSS_SCANNING);
  paused = dsl_scan_is_paused_scrub(scn);
  *in_progress = (scanning && !paused &&
      is_scrub == (activity == 128));
  break;
 }
 default:
  panic("unrecognized value for activity %d", activity);
 }

 return (error);
}
