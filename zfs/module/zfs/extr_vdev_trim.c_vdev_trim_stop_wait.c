
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_trim_lock; } ;
typedef TYPE_1__ vdev_t ;
typedef int spa_t ;
typedef int list_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 TYPE_1__* list_remove_head (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_namespace_lock ;
 int vdev_trim_stop_wait_impl (TYPE_1__*) ;

void
vdev_trim_stop_wait(spa_t *spa, list_t *vd_list)
{
 vdev_t *vd;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 while ((vd = list_remove_head(vd_list)) != ((void*)0)) {
  mutex_enter(&vd->vdev_trim_lock);
  vdev_trim_stop_wait_impl(vd);
  mutex_exit(&vd->vdev_trim_lock);
 }
}
