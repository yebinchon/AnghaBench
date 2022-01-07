
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int spa_vdev_top_lock; } ;
typedef TYPE_1__ spa_t ;


 int mutex_enter (int *) ;
 int spa_namespace_lock ;
 int spa_vdev_config_enter (TYPE_1__*) ;
 int vdev_autotrim_stop_all (TYPE_1__*) ;

uint64_t
spa_vdev_enter(spa_t *spa)
{
 mutex_enter(&spa->spa_vdev_top_lock);
 mutex_enter(&spa_namespace_lock);

 vdev_autotrim_stop_all(spa);

 return (spa_vdev_config_enter(spa));
}
