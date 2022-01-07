
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_suspend_lock; int spa_suspend_cv; } ;
typedef TYPE_1__ spa_t ;


 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_suspended (TYPE_1__*) ;

void
zio_resume_wait(spa_t *spa)
{
 mutex_enter(&spa->spa_suspend_lock);
 while (spa_suspended(spa))
  cv_wait(&spa->spa_suspend_cv, &spa->spa_suspend_lock);
 mutex_exit(&spa->spa_suspend_lock);
}
