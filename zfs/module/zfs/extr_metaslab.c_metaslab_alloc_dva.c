
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zio_alloc_list_t ;
struct TYPE_14__ {scalar_t__ vs_write_errors; int vs_space; int vs_alloc; } ;
struct TYPE_13__ {scalar_t__ vdev_pending_fastwrite; scalar_t__ vdev_state; scalar_t__ vdev_children; unsigned long long vdev_ashift; int vdev_id; TYPE_2__ vdev_stat; TYPE_3__* vdev_mg; } ;
typedef TYPE_1__ vdev_t ;
typedef TYPE_2__ vdev_stat_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_15__ {int mg_activation_count; int mg_initialized; int mg_bias; scalar_t__ mg_aliquot; struct TYPE_15__* mg_next; TYPE_4__* mg_class; TYPE_1__* mg_vd; } ;
typedef TYPE_3__ metaslab_group_t ;
struct TYPE_16__ {scalar_t__ mc_aliquot; int mc_space; int mc_alloc; int mc_alloc_groups; TYPE_3__* mc_rotor; } ;
typedef TYPE_4__ metaslab_class_t ;
typedef int int64_t ;
typedef int dva_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DVA_GET_VDEV (int *) ;
 int DVA_IS_VALID (int *) ;
 int DVA_SET_ASIZE (int *,scalar_t__) ;
 int DVA_SET_GANG (int *,int) ;
 int DVA_SET_OFFSET (int *,scalar_t__) ;
 int DVA_SET_VDEV (int *,int ) ;
 int ENOSPC ;
 int FTAG ;
 int GANG_ALLOCATION (int) ;
 int METASLAB_FASTWRITE ;
 int METASLAB_GANG_HEADER ;
 int METASLAB_HINTBP_AVOID ;
 scalar_t__ P2PHASE (scalar_t__,unsigned long long) ;
 int RW_READER ;
 int SCL_ZIO ;
 int SET_ERROR (int ) ;
 int TRACE_ENOSPC ;
 int TRACE_FORCE_GANG ;
 int TRACE_NOT_ALLOCATABLE ;
 int TRACE_VDEV_ERROR ;
 scalar_t__ VDEV_STATE_HEALTHY ;
 int atomic_add_64 (scalar_t__*,scalar_t__) ;
 scalar_t__ atomic_add_64_nv (scalar_t__*,scalar_t__) ;
 int bzero (int *,int) ;
 scalar_t__ metaslab_bias_enabled ;
 scalar_t__ metaslab_force_ganging ;
 scalar_t__ metaslab_group_alloc (TYPE_3__*,int *,scalar_t__,scalar_t__,int,int *,int,int,scalar_t__) ;
 scalar_t__ metaslab_group_allocatable (TYPE_3__*,TYPE_3__*,scalar_t__,int,int) ;
 int metaslab_trace_add (int *,TYPE_3__*,int *,scalar_t__,int,int ,int) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;
 int spa_get_random (int) ;
 scalar_t__ vdev_allocatable (TYPE_1__*) ;
 TYPE_1__* vdev_lookup_top (int *,int ) ;
 scalar_t__ vdev_psize_to_asize (TYPE_1__*,scalar_t__) ;

int
metaslab_alloc_dva(spa_t *spa, metaslab_class_t *mc, uint64_t psize,
    dva_t *dva, int d, dva_t *hintdva, uint64_t txg, int flags,
    zio_alloc_list_t *zal, int allocator)
{
 metaslab_group_t *mg, *fast_mg, *rotor;
 vdev_t *vd;
 boolean_t try_hard = B_FALSE;

 ASSERT(!DVA_IS_VALID(&dva[d]));
 if (psize >= metaslab_force_ganging && (spa_get_random(100) < 3)) {
  metaslab_trace_add(zal, ((void*)0), ((void*)0), psize, d, TRACE_FORCE_GANG,
      allocator);
  return (SET_ERROR(ENOSPC));
 }
 if (hintdva) {
  vd = vdev_lookup_top(spa, DVA_GET_VDEV(&hintdva[d]));







  if (vd != ((void*)0) && vd->vdev_mg != ((void*)0)) {
   mg = vd->vdev_mg;

   if (flags & METASLAB_HINTBP_AVOID &&
       mg->mg_next != ((void*)0))
    mg = mg->mg_next;
  } else {
   mg = mc->mc_rotor;
  }
 } else if (d != 0) {
  vd = vdev_lookup_top(spa, DVA_GET_VDEV(&dva[d - 1]));
  mg = vd->vdev_mg->mg_next;
 } else if (flags & METASLAB_FASTWRITE) {
  mg = fast_mg = mc->mc_rotor;

  do {
   if (fast_mg->mg_vd->vdev_pending_fastwrite <
       mg->mg_vd->vdev_pending_fastwrite)
    mg = fast_mg;
  } while ((fast_mg = fast_mg->mg_next) != mc->mc_rotor);

 } else {
  ASSERT(mc->mc_rotor != ((void*)0));
  mg = mc->mc_rotor;
 }





 if (mg->mg_class != mc || mg->mg_activation_count <= 0)
  mg = mc->mc_rotor;

 rotor = mg;
top:
 do {
  boolean_t allocatable;

  ASSERT(mg->mg_activation_count == 1);
  vd = mg->mg_vd;




  if (try_hard) {
   spa_config_enter(spa, SCL_ZIO, FTAG, RW_READER);
   allocatable = vdev_allocatable(vd);
   spa_config_exit(spa, SCL_ZIO, FTAG);
  } else {
   allocatable = vdev_allocatable(vd);
  }
  if (allocatable && !GANG_ALLOCATION(flags) && !try_hard) {
   allocatable = metaslab_group_allocatable(mg, rotor,
       psize, allocator, d);
  }

  if (!allocatable) {
   metaslab_trace_add(zal, mg, ((void*)0), psize, d,
       TRACE_NOT_ALLOCATABLE, allocator);
   goto next;
  }

  ASSERT(mg->mg_initialized);






  if ((vd->vdev_stat.vs_write_errors > 0 ||
      vd->vdev_state < VDEV_STATE_HEALTHY) &&
      d == 0 && !try_hard && vd->vdev_children == 0) {
   metaslab_trace_add(zal, mg, ((void*)0), psize, d,
       TRACE_VDEV_ERROR, allocator);
   goto next;
  }

  ASSERT(mg->mg_class == mc);

  uint64_t asize = vdev_psize_to_asize(vd, psize);
  ASSERT(P2PHASE(asize, 1ULL << vd->vdev_ashift) == 0);







  uint64_t offset = metaslab_group_alloc(mg, zal, asize, txg,
      !try_hard, dva, d, allocator, try_hard);

  if (offset != -1ULL) {
   if (mc->mc_aliquot == 0 && metaslab_bias_enabled) {
    vdev_stat_t *vs = &vd->vdev_stat;
    int64_t vs_free = vs->vs_space - vs->vs_alloc;
    int64_t mc_free = mc->mc_space - mc->mc_alloc;
    int64_t ratio;
    ratio = (vs_free * mc->mc_alloc_groups * 100) /
        (mc_free + 1);
    mg->mg_bias = ((ratio - 100) *
        (int64_t)mg->mg_aliquot) / 100;
   } else if (!metaslab_bias_enabled) {
    mg->mg_bias = 0;
   }

   if ((flags & METASLAB_FASTWRITE) ||
       atomic_add_64_nv(&mc->mc_aliquot, asize) >=
       mg->mg_aliquot + mg->mg_bias) {
    mc->mc_rotor = mg->mg_next;
    mc->mc_aliquot = 0;
   }

   DVA_SET_VDEV(&dva[d], vd->vdev_id);
   DVA_SET_OFFSET(&dva[d], offset);
   DVA_SET_GANG(&dva[d],
       ((flags & METASLAB_GANG_HEADER) ? 1 : 0));
   DVA_SET_ASIZE(&dva[d], asize);

   if (flags & METASLAB_FASTWRITE) {
    atomic_add_64(&vd->vdev_pending_fastwrite,
        psize);
   }

   return (0);
  }
next:
  mc->mc_rotor = mg->mg_next;
  mc->mc_aliquot = 0;
 } while ((mg = mg->mg_next) != rotor);




 if (!try_hard) {
  try_hard = B_TRUE;
  goto top;
 }

 bzero(&dva[d], sizeof (dva_t));

 metaslab_trace_add(zal, rotor, ((void*)0), psize, d, TRACE_ENOSPC, allocator);
 return (SET_ERROR(ENOSPC));
}
