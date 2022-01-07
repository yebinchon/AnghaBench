
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_evicting_os_lock; int spa_evicting_os_cv; int spa_evicting_os_list; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;


 int cv_broadcast (int *) ;
 int list_remove (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_evicting_os_deregister(spa_t *spa, objset_t *os)
{
 mutex_enter(&spa->spa_evicting_os_lock);
 list_remove(&spa->spa_evicting_os_list, os);
 cv_broadcast(&spa->spa_evicting_os_cv);
 mutex_exit(&spa->spa_evicting_os_lock);
}
