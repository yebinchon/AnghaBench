
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_isspare; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_aux_activate (TYPE_1__*,int *) ;
 int spa_spare_avl ;
 int spa_spare_lock ;

void
spa_spare_activate(vdev_t *vd)
{
 mutex_enter(&spa_spare_lock);
 ASSERT(vd->vdev_isspare);
 spa_aux_activate(vd, &spa_spare_avl);
 mutex_exit(&spa_spare_lock);
}
