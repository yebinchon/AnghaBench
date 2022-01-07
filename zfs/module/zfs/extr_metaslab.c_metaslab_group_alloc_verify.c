
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_6__ {int * mg_alloc_queue_depth; } ;
typedef TYPE_1__ metaslab_group_t ;
typedef int dva_t ;
struct TYPE_7__ {int * blk_dva; } ;
typedef TYPE_2__ blkptr_t ;
struct TYPE_8__ {TYPE_1__* vdev_mg; } ;


 int BP_GET_NDVAS (TYPE_2__ const*) ;
 int DVA_GET_VDEV (int const*) ;
 int VERIFY (int ) ;
 TYPE_3__* vdev_lookup_top (int *,int ) ;
 int zfs_refcount_not_held (int *,void*) ;

void
metaslab_group_alloc_verify(spa_t *spa, const blkptr_t *bp, void *tag,
    int allocator)
{
}
