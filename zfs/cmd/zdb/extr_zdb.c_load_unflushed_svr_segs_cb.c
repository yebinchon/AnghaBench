
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t vdev_ms_shift; int * vdev_indirect_mapping; int ** vdev_ms; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_indirect_mapping_t ;
typedef size_t uint64_t ;
struct TYPE_7__ {size_t sme_offset; size_t sme_run; scalar_t__ sme_vdev; scalar_t__ sme_type; } ;
typedef TYPE_2__ space_map_entry_t ;
struct TYPE_8__ {scalar_t__ svr_vdev_id; int svr_allocd_segs; } ;
typedef TYPE_3__ spa_vdev_removal_t ;
typedef int spa_t ;
typedef int metaslab_t ;


 int ASSERT (int) ;
 scalar_t__ SM_ALLOC ;
 scalar_t__ SM_FREE ;
 size_t metaslab_unflushed_txg (int *) ;
 int range_tree_add (int ,size_t,size_t) ;
 int range_tree_remove (int ,size_t,size_t) ;
 size_t vdev_indirect_mapping_max_offset (int *) ;
 TYPE_1__* vdev_lookup_top (int *,scalar_t__) ;

__attribute__((used)) static int
load_unflushed_svr_segs_cb(spa_t *spa, space_map_entry_t *sme,
    uint64_t txg, void *arg)
{
 spa_vdev_removal_t *svr = arg;

 uint64_t offset = sme->sme_offset;
 uint64_t size = sme->sme_run;


 if (sme->sme_vdev != svr->svr_vdev_id)
  return (0);

 vdev_t *vd = vdev_lookup_top(spa, sme->sme_vdev);
 metaslab_t *ms = vd->vdev_ms[offset >> vd->vdev_ms_shift];
 ASSERT(sme->sme_type == SM_ALLOC || sme->sme_type == SM_FREE);

 if (txg < metaslab_unflushed_txg(ms))
  return (0);

 vdev_indirect_mapping_t *vim = vd->vdev_indirect_mapping;
 ASSERT(vim != ((void*)0));
 if (offset >= vdev_indirect_mapping_max_offset(vim))
  return (0);

 if (sme->sme_type == SM_ALLOC)
  range_tree_add(svr->svr_allocd_segs, offset, size);
 else
  range_tree_remove(svr->svr_allocd_segs, offset, size);

 return (0);
}
