
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_evicting_os_lock; int spa_evicting_os_list; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;


 int list_insert_head (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_evicting_os_register(spa_t *spa, objset_t *os)
{
 mutex_enter(&spa->spa_evicting_os_lock);
 list_insert_head(&spa->spa_evicting_os_list, os);
 mutex_exit(&spa->spa_evicting_os_lock);
}
