
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int spa_vdev_top_lock; } ;
typedef TYPE_1__ spa_t ;


 int FTAG ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int dsl_early_sync_task (char const*,int ,int ,int *,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_checkpoint_check ;
 int spa_checkpoint_sync ;
 int spa_close (TYPE_1__*,int ) ;
 int spa_get_dsl (TYPE_1__*) ;
 int spa_open (char const*,TYPE_1__**,int ) ;
 int txg_wait_synced (int ,int ) ;

int
spa_checkpoint(const char *pool)
{
 int error;
 spa_t *spa;

 error = spa_open(pool, &spa, FTAG);
 if (error != 0)
  return (error);

 mutex_enter(&spa->spa_vdev_top_lock);
 txg_wait_synced(spa_get_dsl(spa), 0);
 error = dsl_early_sync_task(pool, spa_checkpoint_check,
     spa_checkpoint_sync, ((void*)0), 0, ZFS_SPACE_CHECK_NORMAL);

 mutex_exit(&spa->spa_vdev_top_lock);

 spa_close(spa, FTAG);
 return (error);
}
