
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * svr_thread; int svr_vdev_id; } ;
typedef TYPE_1__ spa_vdev_removal_t ;
struct TYPE_7__ {TYPE_1__* spa_vdev_removal; } ;
typedef TYPE_2__ spa_t ;


 int TS_RUN ;
 int minclsyspri ;
 int p0 ;
 int spa_vdev_remove_thread ;
 int spa_writeable (TYPE_2__*) ;
 int * thread_create (int *,int ,int ,TYPE_2__*,int ,int *,int ,int ) ;
 int zfs_dbgmsg (char*,int ) ;

void
spa_restart_removal(spa_t *spa)
{
 spa_vdev_removal_t *svr = spa->spa_vdev_removal;

 if (svr == ((void*)0))
  return;
 if (svr->svr_thread != ((void*)0))
  return;

 if (!spa_writeable(spa))
  return;

 zfs_dbgmsg("restarting removal of %llu", svr->svr_vdev_id);
 svr->svr_thread = thread_create(((void*)0), 0, spa_vdev_remove_thread, spa,
     0, &p0, TS_RUN, minclsyspri);
}
