
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int vdev_pending_fastwrite; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int dva_t ;
struct TYPE_10__ {int * blk_dva; } ;
typedef TYPE_2__ blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_NDVAS (TYPE_2__ const*) ;
 scalar_t__ BP_GET_PSIZE (TYPE_2__ const*) ;
 int BP_IS_EMBEDDED (TYPE_2__ const*) ;
 int BP_IS_HOLE (TYPE_2__ const*) ;
 int DVA_GET_VDEV (int const*) ;
 int FTAG ;
 int RW_READER ;
 int SCL_VDEV ;
 int atomic_add_64 (int *,scalar_t__) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;
 TYPE_1__* vdev_lookup_top (int *,int ) ;

void
metaslab_fastwrite_mark(spa_t *spa, const blkptr_t *bp)
{
 const dva_t *dva = bp->blk_dva;
 int ndvas = BP_GET_NDVAS(bp);
 uint64_t psize = BP_GET_PSIZE(bp);
 int d;
 vdev_t *vd;

 ASSERT(!BP_IS_HOLE(bp));
 ASSERT(!BP_IS_EMBEDDED(bp));
 ASSERT(psize > 0);

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);

 for (d = 0; d < ndvas; d++) {
  if ((vd = vdev_lookup_top(spa, DVA_GET_VDEV(&dva[d]))) == ((void*)0))
   continue;
  atomic_add_64(&vd->vdev_pending_fastwrite, psize);
 }

 spa_config_exit(spa, SCL_VDEV, FTAG);
}
