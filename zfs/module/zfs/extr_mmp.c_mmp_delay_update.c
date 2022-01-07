
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* mmp_last_write; int mmp_delay; int mmp_io_lock; } ;
struct TYPE_6__ {TYPE_2__ spa_mmp; } ;
typedef TYPE_1__ spa_t ;
typedef TYPE_2__ mmp_thread_t ;
typedef int hrtime_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 int MAX (int,int) ;
 int MMP_INTERVAL_OK (int ) ;
 int MSEC2NSEC (int ) ;
 int MUTEX_HELD (int *) ;
 void* gethrtime () ;
 scalar_t__ spa_multihost (TYPE_1__*) ;
 int vdev_count_leaves (TYPE_1__*) ;
 int zfs_multihost_interval ;

__attribute__((used)) static void
mmp_delay_update(spa_t *spa, boolean_t write_completed)
{
 mmp_thread_t *mts = &spa->spa_mmp;
 hrtime_t delay = gethrtime() - mts->mmp_last_write;

 ASSERT(MUTEX_HELD(&mts->mmp_io_lock));

 if (spa_multihost(spa) == B_FALSE) {
  mts->mmp_delay = 0;
  return;
 }

 if (delay > mts->mmp_delay)
  mts->mmp_delay = delay;

 if (write_completed == B_FALSE)
  return;

 mts->mmp_last_write = gethrtime();




 if (delay < mts->mmp_delay) {
  hrtime_t min_delay =
      MSEC2NSEC(MMP_INTERVAL_OK(zfs_multihost_interval)) /
      MAX(1, vdev_count_leaves(spa));
  mts->mmp_delay = MAX(((delay + mts->mmp_delay * 127) / 128),
      min_delay);
 }
}
