
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ zo_mmp_test; } ;
typedef TYPE_1__ ztest_shared_opts_t ;
typedef int ztest_ds_t ;
typedef int uint64_t ;
struct TYPE_13__ {int spa_props_lock; int spa_multihost; } ;
typedef TYPE_2__ spa_t ;


 int B_FALSE ;
 int B_TRUE ;
 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int mmp_signal_all_threads () ;
 int mmp_thread_start (TYPE_2__*) ;
 int mmp_thread_stop (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_get_dsl (TYPE_2__*) ;
 scalar_t__ spa_multihost (TYPE_2__*) ;
 scalar_t__ spa_suspended (TYPE_2__*) ;
 int txg_wait_synced (int ,int ) ;
 scalar_t__ zfs_multihost_fail_intervals ;
 TYPE_1__ ztest_opts ;
 TYPE_2__* ztest_spa ;

void
ztest_mmp_enable_disable(ztest_ds_t *zd, uint64_t id)
{
 ztest_shared_opts_t *zo = &ztest_opts;
 spa_t *spa = ztest_spa;

 if (zo->zo_mmp_test)
  return;





 if (spa_suspended(spa))
  return;

 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
 mutex_enter(&spa->spa_props_lock);

 zfs_multihost_fail_intervals = 0;

 if (!spa_multihost(spa)) {
  spa->spa_multihost = B_TRUE;
  mmp_thread_start(spa);
 }

 mutex_exit(&spa->spa_props_lock);
 spa_config_exit(spa, SCL_CONFIG, FTAG);

 txg_wait_synced(spa_get_dsl(spa), 0);
 mmp_signal_all_threads();
 txg_wait_synced(spa_get_dsl(spa), 0);

 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
 mutex_enter(&spa->spa_props_lock);

 if (spa_multihost(spa)) {
  mmp_thread_stop(spa);
  spa->spa_multihost = B_FALSE;
 }

 mutex_exit(&spa->spa_props_lock);
 spa_config_exit(spa, SCL_CONFIG, FTAG);
}
