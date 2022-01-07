
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vc_lock; int vc_lastused_tree; int vc_offset_tree; } ;
struct TYPE_5__ {TYPE_2__ vdev_cache; } ;
typedef TYPE_1__ vdev_t ;
typedef TYPE_2__ vdev_cache_t ;


 int avl_destroy (int *) ;
 int mutex_destroy (int *) ;
 int vdev_cache_purge (TYPE_1__*) ;

void
vdev_cache_fini(vdev_t *vd)
{
 vdev_cache_t *vc = &vd->vdev_cache;

 vdev_cache_purge(vd);

 avl_destroy(&vc->vc_offset_tree);
 avl_destroy(&vc->vc_lastused_tree);

 mutex_destroy(&vc->vc_lock);
}
