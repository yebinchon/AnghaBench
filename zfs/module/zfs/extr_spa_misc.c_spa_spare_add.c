
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vdev_isspare; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_aux_add (TYPE_1__*,int *) ;
 int spa_spare_avl ;
 int spa_spare_lock ;

void
spa_spare_add(vdev_t *vd)
{
 mutex_enter(&spa_spare_lock);
 ASSERT(!vd->vdev_isspare);
 spa_aux_add(vd, &spa_spare_avl);
 vd->vdev_isspare = B_TRUE;
 mutex_exit(&spa_spare_lock);
}
