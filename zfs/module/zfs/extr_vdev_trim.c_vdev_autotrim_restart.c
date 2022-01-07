
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ spa_autotrim; } ;
typedef TYPE_1__ spa_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int spa_namespace_lock ;
 int vdev_autotrim (TYPE_1__*) ;

void
vdev_autotrim_restart(spa_t *spa)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 if (spa->spa_autotrim)
  vdev_autotrim(spa);
}
