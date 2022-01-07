
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ vdev_id; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int spa_remap_cb_t ;
struct TYPE_14__ {TYPE_4__* rbca_bp; void* rbca_cb_arg; int rbca_remap_offset; TYPE_2__* rbca_remap_vd; int rbca_cb; } ;
typedef TYPE_3__ remap_blkptr_cb_arg_t ;
typedef int dva_t ;
typedef int boolean_t ;
struct TYPE_15__ {int * blk_dva; } ;
typedef TYPE_4__ blkptr_t ;
struct TYPE_12__ {int (* vdev_op_remap ) (TYPE_2__*,int ,int ,int ,TYPE_3__*) ;} ;


 scalar_t__ BP_GET_DEDUP (TYPE_4__*) ;
 int BP_GET_NDVAS (TYPE_4__*) ;
 scalar_t__ BP_IS_GANG (TYPE_4__*) ;
 int B_FALSE ;
 int B_TRUE ;
 int DVA_GET_ASIZE (int *) ;
 int DVA_GET_OFFSET (int *) ;
 scalar_t__ DVA_GET_VDEV (int *) ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 int remap_blkptr_cb ;
 int spa_feature_is_enabled (int *,int ) ;
 int stub1 (TYPE_2__*,int ,int ,int ,TYPE_3__*) ;
 TYPE_2__* vdev_lookup_top (int *,scalar_t__) ;
 int zfs_remap_blkptr_enable ;

boolean_t
spa_remap_blkptr(spa_t *spa, blkptr_t *bp, spa_remap_cb_t callback, void *arg)
{
 remap_blkptr_cb_arg_t rbca;

 if (!zfs_remap_blkptr_enable)
  return (B_FALSE);

 if (!spa_feature_is_enabled(spa, SPA_FEATURE_OBSOLETE_COUNTS))
  return (B_FALSE);





 if (BP_GET_DEDUP(bp))
  return (B_FALSE);







 if (BP_IS_GANG(bp))
  return (B_FALSE);




 if (BP_GET_NDVAS(bp) < 1)
  return (B_FALSE);





 dva_t *dva = &bp->blk_dva[0];

 uint64_t offset = DVA_GET_OFFSET(dva);
 uint64_t size = DVA_GET_ASIZE(dva);
 vdev_t *vd = vdev_lookup_top(spa, DVA_GET_VDEV(dva));

 if (vd->vdev_ops->vdev_op_remap == ((void*)0))
  return (B_FALSE);

 rbca.rbca_bp = bp;
 rbca.rbca_cb = callback;
 rbca.rbca_remap_vd = vd;
 rbca.rbca_remap_offset = offset;
 rbca.rbca_cb_arg = arg;
 vd->vdev_ops->vdev_op_remap(vd, offset, size, remap_blkptr_cb, &rbca);


 if (DVA_GET_VDEV(&rbca.rbca_bp->blk_dva[0]) == vd->vdev_id)
  return (B_FALSE);

 return (B_TRUE);
}
