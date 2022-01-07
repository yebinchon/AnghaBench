
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_isl2cache; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_aux_activate (TYPE_1__*,int *) ;
 int spa_l2cache_avl ;
 int spa_l2cache_lock ;

void
spa_l2cache_activate(vdev_t *vd)
{
 mutex_enter(&spa_l2cache_lock);
 ASSERT(vd->vdev_isl2cache);
 spa_aux_activate(vd, &spa_l2cache_avl);
 mutex_exit(&spa_l2cache_lock);
}
