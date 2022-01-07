
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t vdev_ms_shift; TYPE_3__** vdev_ms; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_9__ {size_t sme_offset; size_t sme_run; size_t sme_vdev; scalar_t__ sme_type; } ;
typedef TYPE_2__ space_map_entry_t ;
typedef int spa_t ;
struct TYPE_10__ {int ms_allocatable; } ;
typedef TYPE_3__ metaslab_t ;
typedef scalar_t__ maptype_t ;


 int ASSERT (int) ;
 scalar_t__ SM_ALLOC ;
 scalar_t__ SM_FREE ;
 size_t metaslab_unflushed_txg (TYPE_3__*) ;
 int range_tree_add (int ,size_t,size_t) ;
 int range_tree_remove (int ,size_t,size_t) ;
 int vdev_is_concrete (TYPE_1__*) ;
 TYPE_1__* vdev_lookup_top (int *,size_t) ;

__attribute__((used)) static int
load_unflushed_cb(spa_t *spa, space_map_entry_t *sme, uint64_t txg, void *arg)
{
 maptype_t *uic_maptype = arg;

 uint64_t offset = sme->sme_offset;
 uint64_t size = sme->sme_run;
 uint64_t vdev_id = sme->sme_vdev;

 vdev_t *vd = vdev_lookup_top(spa, vdev_id);


 if (!vdev_is_concrete(vd))
  return (0);

 metaslab_t *ms = vd->vdev_ms[offset >> vd->vdev_ms_shift];

 ASSERT(sme->sme_type == SM_ALLOC || sme->sme_type == SM_FREE);
 ASSERT(*uic_maptype == SM_ALLOC || *uic_maptype == SM_FREE);

 if (txg < metaslab_unflushed_txg(ms))
  return (0);

 if (*uic_maptype == sme->sme_type)
  range_tree_add(ms->ms_allocatable, offset, size);
 else
  range_tree_remove(ms->ms_allocatable, offset, size);

 return (0);
}
