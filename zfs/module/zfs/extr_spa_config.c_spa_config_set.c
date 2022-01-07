
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_props_lock; int * spa_config; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;

void
spa_config_set(spa_t *spa, nvlist_t *config)
{
 mutex_enter(&spa->spa_props_lock);
 if (spa->spa_config != ((void*)0) && spa->spa_config != config)
  nvlist_free(spa->spa_config);
 spa->spa_config = config;
 mutex_exit(&spa->spa_props_lock);
}
