
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int zcb_removing_size; } ;
typedef TYPE_1__ zdb_cb_t ;
struct TYPE_23__ {size_t vdev_ms_count; scalar_t__ vdev_asize; TYPE_6__** vdev_ms; int * vdev_indirect_mapping; } ;
typedef TYPE_2__ vdev_t ;
typedef int vdev_indirect_mapping_t ;
typedef size_t uint64_t ;
struct TYPE_24__ {TYPE_2__* svr_allocd_segs; int svr_vdev_id; } ;
typedef TYPE_3__ spa_vdev_removal_t ;
struct TYPE_25__ {TYPE_3__* spa_vdev_removal; } ;
typedef TYPE_4__ spa_t ;
typedef TYPE_2__ range_tree_t ;
struct TYPE_26__ {scalar_t__ ms_start; int * ms_sm; } ;
typedef TYPE_6__ metaslab_t ;


 int ASSERT0 (scalar_t__) ;
 int FTAG ;
 int RANGE_SEG64 ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SM_ALLOC ;
 int VERIFY0 (int ) ;
 int claim_segment_cb ;
 scalar_t__* dump_opt ;
 int iterate_through_spacemap_logs (TYPE_4__*,int ,TYPE_3__*) ;
 int load_unflushed_svr_segs_cb ;
 int range_tree_add ;
 int range_tree_clear (TYPE_2__*,scalar_t__,scalar_t__) ;
 TYPE_2__* range_tree_create (int *,int ,int *,int ,int ) ;
 int range_tree_destroy (TYPE_2__*) ;
 scalar_t__ range_tree_space (TYPE_2__*) ;
 int range_tree_vacate (TYPE_2__*,int ,TYPE_2__*) ;
 int spa_config_enter (TYPE_4__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_4__*,int ,int ) ;
 int space_map_load (int *,TYPE_2__*,int ) ;
 scalar_t__ vdev_indirect_mapping_max_offset (int *) ;
 TYPE_2__* vdev_lookup_top (TYPE_4__*,int ) ;

__attribute__((used)) static void
zdb_claim_removing(spa_t *spa, zdb_cb_t *zcb)
{
 if (dump_opt['L'])
  return;

 if (spa->spa_vdev_removal == ((void*)0))
  return;

 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);

 spa_vdev_removal_t *svr = spa->spa_vdev_removal;
 vdev_t *vd = vdev_lookup_top(spa, svr->svr_vdev_id);
 vdev_indirect_mapping_t *vim = vd->vdev_indirect_mapping;

 ASSERT0(range_tree_space(svr->svr_allocd_segs));

 range_tree_t *allocs = range_tree_create(((void*)0), RANGE_SEG64, ((void*)0), 0, 0);
 for (uint64_t msi = 0; msi < vd->vdev_ms_count; msi++) {
  metaslab_t *msp = vd->vdev_ms[msi];

  if (msp->ms_start >= vdev_indirect_mapping_max_offset(vim))
   break;

  ASSERT0(range_tree_space(allocs));
  if (msp->ms_sm != ((void*)0))
   VERIFY0(space_map_load(msp->ms_sm, allocs, SM_ALLOC));
  range_tree_vacate(allocs, range_tree_add, svr->svr_allocd_segs);
 }
 range_tree_destroy(allocs);

 iterate_through_spacemap_logs(spa, load_unflushed_svr_segs_cb, svr);






 range_tree_clear(svr->svr_allocd_segs,
     vdev_indirect_mapping_max_offset(vim),
     vd->vdev_asize - vdev_indirect_mapping_max_offset(vim));

 zcb->zcb_removing_size += range_tree_space(svr->svr_allocd_segs);
 range_tree_vacate(svr->svr_allocd_segs, claim_segment_cb, vd);

 spa_config_exit(spa, SCL_CONFIG, FTAG);
}
