
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * spa_vdev_removal; } ;
typedef TYPE_1__ spa_t ;


 int ENOTACTIVE ;
 int spa_vdev_remove_cancel_impl (TYPE_1__*) ;
 int spa_vdev_remove_suspend (TYPE_1__*) ;

int
spa_vdev_remove_cancel(spa_t *spa)
{
 spa_vdev_remove_suspend(spa);

 if (spa->spa_vdev_removal == ((void*)0))
  return (ENOTACTIVE);

 return (spa_vdev_remove_cancel_impl(spa));
}
