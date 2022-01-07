
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spa_t ;
typedef int nvlist_t ;
typedef int dmu_tx_t ;
struct TYPE_3__ {int dp_mos_dir; } ;


 int CRED () ;
 int EINVAL ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ;
 int TXG_WAIT ;
 int VERIFY0 (int ) ;
 int ZFS_SPACE_CHECK_NONE ;
 int ZPOOL_HIDDEN_ARGS ;
 int ZPOOL_HIST_INPUT_NVL ;
 int ZPOOL_HIST_WHO ;
 int ZPOOL_HIST_ZONE ;
 int crgetruid (int ) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_dd (int ) ;
 int dsl_sync_task_nowait (TYPE_1__*,int ,int *,int ,int ,int *) ;
 int fnvlist_add_string (int *,int ,int *) ;
 int fnvlist_add_uint64 (int *,int ,int ) ;
 int nvlist_dup (int *,int **,int ) ;
 int nvlist_lookup_nvlist (int *,int ,int **) ;
 int nvlist_remove_all (int *,int ) ;
 TYPE_1__* spa_get_dsl (int *) ;
 int spa_history_log_sync ;
 int * spa_history_zone () ;
 scalar_t__ spa_version (int *) ;
 int spa_writeable (int *) ;

int
spa_history_log_nvl(spa_t *spa, nvlist_t *nvl)
{
 int err = 0;
 dmu_tx_t *tx;
 nvlist_t *nvarg, *in_nvl = ((void*)0);

 if (spa_version(spa) < SPA_VERSION_ZPOOL_HISTORY || !spa_writeable(spa))
  return (SET_ERROR(EINVAL));

 err = nvlist_lookup_nvlist(nvl, ZPOOL_HIST_INPUT_NVL, &in_nvl);
 if (err == 0) {
  (void) nvlist_remove_all(in_nvl, ZPOOL_HIDDEN_ARGS);
 }

 tx = dmu_tx_create_dd(spa_get_dsl(spa)->dp_mos_dir);
 err = dmu_tx_assign(tx, TXG_WAIT);
 if (err) {
  dmu_tx_abort(tx);
  return (err);
 }

 VERIFY0(nvlist_dup(nvl, &nvarg, KM_SLEEP));
 if (spa_history_zone() != ((void*)0)) {
  fnvlist_add_string(nvarg, ZPOOL_HIST_ZONE,
      spa_history_zone());
 }
 fnvlist_add_uint64(nvarg, ZPOOL_HIST_WHO, crgetruid(CRED()));


 dsl_sync_task_nowait(spa_get_dsl(spa), spa_history_log_sync,
     nvarg, 0, ZFS_SPACE_CHECK_NONE, tx);
 dmu_tx_commit(tx);


 return (err);
}
