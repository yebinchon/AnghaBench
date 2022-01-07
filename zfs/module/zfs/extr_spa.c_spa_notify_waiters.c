
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_activities_lock; int spa_activities_cv; } ;
typedef TYPE_1__ spa_t ;


 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_notify_waiters(spa_t *spa)
{




 mutex_enter(&spa->spa_activities_lock);
 cv_broadcast(&spa->spa_activities_cv);
 mutex_exit(&spa->spa_activities_lock);
}
