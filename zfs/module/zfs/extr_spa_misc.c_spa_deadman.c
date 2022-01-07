
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_sync_starttime; int spa_deadman_tqid; int spa_root_vdev; int spa_deadman_calls; } ;
typedef TYPE_1__ spa_t ;


 int FTAG ;
 scalar_t__ MSEC_TO_TICK (int ) ;
 int NANOSEC ;
 int TQ_SLEEP ;
 scalar_t__ ddi_get_lbolt () ;
 int gethrtime () ;
 scalar_t__ spa_suspended (TYPE_1__*) ;
 int system_delay_taskq ;
 int taskq_dispatch_delay (int ,void (*) (void*),TYPE_1__*,int ,scalar_t__) ;
 int vdev_deadman (int ,int ) ;
 int zfs_dbgmsg (char*,int,int ) ;
 int zfs_deadman_checktime_ms ;
 scalar_t__ zfs_deadman_enabled ;

void
spa_deadman(void *arg)
{
 spa_t *spa = arg;


 if (spa_suspended(spa))
  return;

 zfs_dbgmsg("slow spa_sync: started %llu seconds ago, calls %llu",
     (gethrtime() - spa->spa_sync_starttime) / NANOSEC,
     ++spa->spa_deadman_calls);
 if (zfs_deadman_enabled)
  vdev_deadman(spa->spa_root_vdev, FTAG);

 spa->spa_deadman_tqid = taskq_dispatch_delay(system_delay_taskq,
     spa_deadman, spa, TQ_SLEEP, ddi_get_lbolt() +
     MSEC_TO_TICK(zfs_deadman_checktime_ms));
}
