
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ spa_state; } ;
typedef TYPE_1__ spa_t ;


 scalar_t__ POOL_STATE_ACTIVE ;
 int mmp_signal_thread (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_namespace_lock ;
 TYPE_1__* spa_next (TYPE_1__*) ;

void
mmp_signal_all_threads(void)
{
 spa_t *spa = ((void*)0);

 mutex_enter(&spa_namespace_lock);
 while ((spa = spa_next(spa))) {
  if (spa->spa_state == POOL_STATE_ACTIVE)
   mmp_signal_thread(spa);
 }
 mutex_exit(&spa_namespace_lock);
}
