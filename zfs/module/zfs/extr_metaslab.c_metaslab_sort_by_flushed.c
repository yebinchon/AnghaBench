
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int ms_id; TYPE_1__* ms_group; int ms_unflushed_txg; } ;
typedef TYPE_3__ metaslab_t ;
struct TYPE_5__ {int vdev_id; } ;
struct TYPE_4__ {TYPE_2__* mg_vd; } ;


 int TREE_CMP (int ,int ) ;
 scalar_t__ likely (int) ;

int
metaslab_sort_by_flushed(const void *va, const void *vb)
{
 const metaslab_t *a = va;
 const metaslab_t *b = vb;

 int cmp = TREE_CMP(a->ms_unflushed_txg, b->ms_unflushed_txg);
 if (likely(cmp))
  return (cmp);

 uint64_t a_vdev_id = a->ms_group->mg_vd->vdev_id;
 uint64_t b_vdev_id = b->ms_group->mg_vd->vdev_id;
 cmp = TREE_CMP(a_vdev_id, b_vdev_id);
 if (cmp)
  return (cmp);

 return (TREE_CMP(a->ms_id, b->ms_id));
}
