
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spa_waiters; int spa_activities_lock; int spa_waiters_cancel; int spa_waiters_cv; int spa_activities_cv; } ;
typedef TYPE_1__ spa_t ;


 int B_FALSE ;
 int B_TRUE ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_wake_waiters(spa_t *spa)
{
 mutex_enter(&spa->spa_activities_lock);
 spa->spa_waiters_cancel = B_TRUE;
 cv_broadcast(&spa->spa_activities_cv);
 while (spa->spa_waiters != 0)
  cv_wait(&spa->spa_waiters_cv, &spa->spa_activities_lock);
 spa->spa_waiters_cancel = B_FALSE;
 mutex_exit(&spa->spa_activities_lock);
}
