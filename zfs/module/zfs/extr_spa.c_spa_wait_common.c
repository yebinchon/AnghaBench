
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zpool_wait_activity_t ;
typedef int uint64_t ;
struct TYPE_5__ {int spa_activities_lock; int spa_waiters_cv; int spa_waiters; int spa_activities_cv; scalar_t__ spa_waiters_cancel; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EINTR ;
 int EINVAL ;
 int FTAG ;
 int ZPOOL_WAIT_INITIALIZE ;
 int ZPOOL_WAIT_NUM_ACTIVITIES ;
 int cv_signal (int *) ;
 scalar_t__ cv_wait_sig (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_activity_in_progress (TYPE_1__*,int ,int ,int ,int *) ;
 int spa_close (TYPE_1__*,int ) ;
 int spa_open (char const*,TYPE_1__**,int ) ;

__attribute__((used)) static int
spa_wait_common(const char *pool, zpool_wait_activity_t activity,
    boolean_t use_tag, uint64_t tag, boolean_t *waited)
{
 if (use_tag && activity != ZPOOL_WAIT_INITIALIZE)
  return (EINVAL);

 if (activity < 0 || activity >= ZPOOL_WAIT_NUM_ACTIVITIES)
  return (EINVAL);

 spa_t *spa;
 int error = spa_open(pool, &spa, FTAG);
 if (error != 0)
  return (error);
 mutex_enter(&spa->spa_activities_lock);
 spa->spa_waiters++;
 spa_close(spa, FTAG);

 *waited = B_FALSE;
 for (;;) {
  boolean_t in_progress;
  error = spa_activity_in_progress(spa, activity, use_tag, tag,
      &in_progress);

  if (error || !in_progress || spa->spa_waiters_cancel)
   break;

  *waited = B_TRUE;

  if (cv_wait_sig(&spa->spa_activities_cv,
      &spa->spa_activities_lock) == 0) {
   error = EINTR;
   break;
  }
 }

 spa->spa_waiters--;
 cv_signal(&spa->spa_waiters_cv);
 mutex_exit(&spa->spa_activities_lock);

 return (error);
}
