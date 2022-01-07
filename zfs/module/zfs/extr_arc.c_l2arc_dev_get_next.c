
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int l2ad_spa; int l2ad_vdev; } ;
typedef TYPE_1__ l2arc_dev_t ;


 int RW_READER ;
 int SCL_L2ARC ;
 TYPE_1__* l2arc_dev_last ;
 int l2arc_dev_list ;
 int l2arc_dev_mtx ;
 scalar_t__ l2arc_ndev ;
 TYPE_1__* list_head (int ) ;
 TYPE_1__* list_next (int ,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_enter (int ,int ,TYPE_1__*,int ) ;
 int spa_namespace_lock ;
 scalar_t__ vdev_is_dead (int ) ;

__attribute__((used)) static l2arc_dev_t *
l2arc_dev_get_next(void)
{
 l2arc_dev_t *first, *next = ((void*)0);






 mutex_enter(&spa_namespace_lock);
 mutex_enter(&l2arc_dev_mtx);


 if (l2arc_ndev == 0)
  goto out;

 first = ((void*)0);
 next = l2arc_dev_last;
 do {

  if (next == ((void*)0)) {
   next = list_head(l2arc_dev_list);
  } else {
   next = list_next(l2arc_dev_list, next);
   if (next == ((void*)0))
    next = list_head(l2arc_dev_list);
  }


  if (first == ((void*)0))
   first = next;
  else if (next == first)
   break;

 } while (vdev_is_dead(next->l2ad_vdev));


 if (vdev_is_dead(next->l2ad_vdev))
  next = ((void*)0);

 l2arc_dev_last = next;

out:
 mutex_exit(&l2arc_dev_mtx);





 if (next != ((void*)0))
  spa_config_enter(next->l2ad_spa, SCL_L2ARC, next, RW_READER);
 mutex_exit(&spa_namespace_lock);

 return (next);
}
