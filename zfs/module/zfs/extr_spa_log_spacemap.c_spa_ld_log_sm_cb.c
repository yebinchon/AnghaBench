
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t vdev_ms_shift; TYPE_4__** vdev_ms; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int uint32_t ;
struct TYPE_10__ {size_t sme_offset; size_t sme_run; int sme_type; int sme_vdev; } ;
typedef TYPE_2__ space_map_entry_t ;
typedef int spa_t ;
struct TYPE_11__ {scalar_t__ slls_txg; int * slls_spa; } ;
typedef TYPE_3__ spa_ld_log_sm_arg_t ;
struct TYPE_12__ {int ms_unflushed_frees; int ms_unflushed_allocs; int ms_loaded; } ;
typedef TYPE_4__ metaslab_t ;


 int ASSERT (int) ;


 scalar_t__ metaslab_unflushed_txg (TYPE_4__*) ;
 int panic (char*) ;
 int range_tree_remove_xor_add_segment (size_t,int ,int ,int ) ;
 int vdev_is_concrete (TYPE_1__*) ;
 TYPE_1__* vdev_lookup_top (int *,int ) ;

__attribute__((used)) static int
spa_ld_log_sm_cb(space_map_entry_t *sme, void *arg)
{
 uint64_t offset = sme->sme_offset;
 uint64_t size = sme->sme_run;
 uint32_t vdev_id = sme->sme_vdev;

 spa_ld_log_sm_arg_t *slls = arg;
 spa_t *spa = slls->slls_spa;

 vdev_t *vd = vdev_lookup_top(spa, vdev_id);






 if (!vdev_is_concrete(vd))
  return (0);

 metaslab_t *ms = vd->vdev_ms[offset >> vd->vdev_ms_shift];
 ASSERT(!ms->ms_loaded);
 if (slls->slls_txg < metaslab_unflushed_txg(ms))
  return (0);

 switch (sme->sme_type) {
 case 129:
  range_tree_remove_xor_add_segment(offset, offset + size,
      ms->ms_unflushed_frees, ms->ms_unflushed_allocs);
  break;
 case 128:
  range_tree_remove_xor_add_segment(offset, offset + size,
      ms->ms_unflushed_allocs, ms->ms_unflushed_frees);
  break;
 default:
  panic("invalid maptype_t");
  break;
 }
 return (0);
}
