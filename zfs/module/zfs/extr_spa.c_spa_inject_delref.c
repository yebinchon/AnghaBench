
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_inject_ref; } ;
typedef TYPE_1__ spa_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_namespace_lock ;

void
spa_inject_delref(spa_t *spa)
{
 mutex_enter(&spa_namespace_lock);
 spa->spa_inject_ref--;
 mutex_exit(&spa_namespace_lock);
}
