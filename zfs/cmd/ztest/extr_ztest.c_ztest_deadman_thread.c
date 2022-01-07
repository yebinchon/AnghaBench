
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zs_thread_stop; scalar_t__ zs_thread_start; scalar_t__ zs_proc_stop; scalar_t__ zs_proc_start; } ;
typedef TYPE_1__ ztest_shared_t ;
struct TYPE_6__ {int * spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef scalar_t__ hrtime_t ;


 int FTAG ;
 scalar_t__ MSEC2NSEC (int) ;
 scalar_t__ NANOSEC ;
 int fatal (int ,char*,scalar_t__) ;
 scalar_t__ gethrtime () ;
 int poll (int *,int ,int) ;
 int printf (char*,scalar_t__) ;
 scalar_t__ spa_suspended (TYPE_2__*) ;
 int thread_exit () ;
 int vdev_deadman (int *,int ) ;
 int zfs_deadman_checktime_ms ;
 int zfs_deadman_synctime_ms ;
 int ztest_exiting ;
 TYPE_2__* ztest_spa ;

__attribute__((used)) static void
ztest_deadman_thread(void *arg)
{
 ztest_shared_t *zs = arg;
 spa_t *spa = ztest_spa;
 hrtime_t delay, overdue, last_run = gethrtime();

 delay = (zs->zs_thread_stop - zs->zs_thread_start) +
     MSEC2NSEC(zfs_deadman_synctime_ms);

 while (!ztest_exiting) {




  if (gethrtime() < last_run + delay) {
   (void) poll(((void*)0), 0, 1000);
   continue;
  }







  if (spa_suspended(spa) || spa->spa_root_vdev == ((void*)0)) {
   fatal(0, "aborting test after %llu seconds because "
       "pool has transitioned to a suspended state.",
       zfs_deadman_synctime_ms / 1000);
  }
  vdev_deadman(spa->spa_root_vdev, FTAG);






  overdue = zs->zs_proc_stop + MSEC2NSEC(zfs_deadman_synctime_ms);
  if (gethrtime() > overdue) {
   fatal(0, "aborting test after %llu seconds because "
       "the process is overdue for termination.",
       (gethrtime() - zs->zs_proc_start) / NANOSEC);
  }

  (void) printf("ztest has been running for %lld seconds\n",
      (gethrtime() - zs->zs_proc_start) / NANOSEC);

  last_run = gethrtime();
  delay = MSEC2NSEC(zfs_deadman_checktime_ms);
 }

 thread_exit();
}
