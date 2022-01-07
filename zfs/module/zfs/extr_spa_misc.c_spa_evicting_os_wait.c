
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_evicting_os_lock; int spa_evicting_os_cv; int spa_evicting_os_list; } ;
typedef TYPE_1__ spa_t ;


 int cv_wait (int *,int *) ;
 int dmu_buf_user_evict_wait () ;
 int list_is_empty (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_evicting_os_wait(spa_t *spa)
{
 mutex_enter(&spa->spa_evicting_os_lock);
 while (!list_is_empty(&spa->spa_evicting_os_list))
  cv_wait(&spa->spa_evicting_os_cv, &spa->spa_evicting_os_lock);
 mutex_exit(&spa->spa_evicting_os_lock);

 dmu_buf_user_evict_wait();
}
