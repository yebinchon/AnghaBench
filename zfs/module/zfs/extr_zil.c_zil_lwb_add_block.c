
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zv_vdev; } ;
typedef TYPE_1__ zil_vdev_node_t ;
struct TYPE_11__ {int lwb_vdev_lock; int lwb_vdev_tree; } ;
typedef TYPE_2__ lwb_t ;
struct TYPE_12__ {int * blk_dva; } ;
typedef TYPE_3__ blkptr_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int BP_GET_NDVAS (TYPE_3__ const*) ;
 int DVA_GET_VDEV (int *) ;
 int KM_SLEEP ;
 int * avl_find (int *,TYPE_1__*,int *) ;
 int avl_insert (int *,TYPE_1__*,int ) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ zil_nocacheflush ;

void
zil_lwb_add_block(lwb_t *lwb, const blkptr_t *bp)
{
 avl_tree_t *t = &lwb->lwb_vdev_tree;
 avl_index_t where;
 zil_vdev_node_t *zv, zvsearch;
 int ndvas = BP_GET_NDVAS(bp);
 int i;

 if (zil_nocacheflush)
  return;

 mutex_enter(&lwb->lwb_vdev_lock);
 for (i = 0; i < ndvas; i++) {
  zvsearch.zv_vdev = DVA_GET_VDEV(&bp->blk_dva[i]);
  if (avl_find(t, &zvsearch, &where) == ((void*)0)) {
   zv = kmem_alloc(sizeof (*zv), KM_SLEEP);
   zv->zv_vdev = zvsearch.zv_vdev;
   avl_insert(t, zv, where);
  }
 }
 mutex_exit(&lwb->lwb_vdev_lock);
}
