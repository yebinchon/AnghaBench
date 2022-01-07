
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
struct TYPE_16__ {int vdev_scan_io_queue_lock; int * vdev_scan_io_queue; } ;
typedef TYPE_2__ vdev_t ;
typedef int spa_t ;
typedef int dva_t ;
struct TYPE_17__ {TYPE_1__* dp_scan; int * dp_spa; } ;
typedef TYPE_3__ dsl_pool_t ;
struct TYPE_18__ {int * blk_dva; } ;
typedef TYPE_4__ blkptr_t ;
struct TYPE_15__ {int scn_is_sorted; } ;


 int ASSERT (int) ;
 int BP_GET_NDVAS (TYPE_4__ const*) ;
 int BP_IS_EMBEDDED (TYPE_4__ const*) ;
 scalar_t__ BP_IS_GANG (TYPE_4__ const*) ;
 int DVA_GET_VDEV (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int scan_exec_io (TYPE_3__*,TYPE_4__ const*,int,int const*,int *) ;
 int * scan_io_queue_create (TYPE_2__*) ;
 int scan_io_queue_insert (int *,TYPE_4__ const*,int,int,int const*) ;
 TYPE_2__* vdev_lookup_top (int *,int ) ;

__attribute__((used)) static void
dsl_scan_enqueue(dsl_pool_t *dp, const blkptr_t *bp, int zio_flags,
    const zbookmark_phys_t *zb)
{
 spa_t *spa = dp->dp_spa;

 ASSERT(!BP_IS_EMBEDDED(bp));





 if (!dp->dp_scan->scn_is_sorted || BP_IS_GANG(bp)) {
  scan_exec_io(dp, bp, zio_flags, zb, ((void*)0));
  return;
 }

 for (int i = 0; i < BP_GET_NDVAS(bp); i++) {
  dva_t dva;
  vdev_t *vdev;

  dva = bp->blk_dva[i];
  vdev = vdev_lookup_top(spa, DVA_GET_VDEV(&dva));
  ASSERT(vdev != ((void*)0));

  mutex_enter(&vdev->vdev_scan_io_queue_lock);
  if (vdev->vdev_scan_io_queue == ((void*)0))
   vdev->vdev_scan_io_queue = scan_io_queue_create(vdev);
  ASSERT(dp->dp_scan != ((void*)0));
  scan_io_queue_insert(vdev->vdev_scan_io_queue, bp,
      i, zio_flags, zb);
  mutex_exit(&vdev->vdev_scan_io_queue_lock);
 }
}
