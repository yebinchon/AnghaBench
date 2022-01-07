
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_ctx_t ;
typedef int extents_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int WITNESS_RANK_CORE ;
 int assert (int) ;
 scalar_t__ config_debug ;
 int extent_addr_randomize (int *,int *,size_t) ;
 void* extent_base_get (int *) ;
 scalar_t__ extent_commit_impl (int *,int *,int **,int *,int ,size_t,int) ;
 scalar_t__ extent_committed_get (int *) ;
 int extent_interior_register (int *,int *,int *,int ) ;
 int extent_record (int *,int *,int **,int *,int *,int) ;
 int * extent_recycle_extract (int *,int *,int **,int *,int *,void*,size_t,size_t,size_t,int,int) ;
 int * extent_recycle_split (int *,int *,int **,int *,int *,void*,size_t,size_t,size_t,int,int ,int *,int) ;
 size_t extent_size_get (int *) ;
 int extent_slab_set (int *,int) ;
 scalar_t__ extent_state_active ;
 scalar_t__ extent_state_get (int *) ;
 scalar_t__ extent_zeroed_get (int *) ;
 int extent_zeroed_set (int *,int) ;
 int memset (void*,int ,size_t) ;
 scalar_t__ pages_purge_forced (void*,size_t) ;
 int * tsdn_rtree_ctx (int *,int *) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int) ;

__attribute__((used)) static extent_t *
extent_recycle(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    extents_t *extents, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit,
    bool growing_retained) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, growing_retained ? 1 : 0);
 assert(new_addr == ((void*)0) || !slab);
 assert(pad == 0 || !slab);
 assert(!*zero || !slab);

 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);

 extent_t *extent = extent_recycle_extract(tsdn, arena, r_extent_hooks,
     rtree_ctx, extents, new_addr, size, pad, alignment, slab,
     growing_retained);
 if (extent == ((void*)0)) {
  return ((void*)0);
 }

 extent = extent_recycle_split(tsdn, arena, r_extent_hooks, rtree_ctx,
     extents, new_addr, size, pad, alignment, slab, szind, extent,
     growing_retained);
 if (extent == ((void*)0)) {
  return ((void*)0);
 }

 if (*commit && !extent_committed_get(extent)) {
  if (extent_commit_impl(tsdn, arena, r_extent_hooks, extent,
      0, extent_size_get(extent), growing_retained)) {
   extent_record(tsdn, arena, r_extent_hooks, extents,
       extent, growing_retained);
   return ((void*)0);
  }
  extent_zeroed_set(extent, 1);
 }

 if (extent_committed_get(extent)) {
  *commit = 1;
 }
 if (extent_zeroed_get(extent)) {
  *zero = 1;
 }

 if (pad != 0) {
  extent_addr_randomize(tsdn, extent, alignment);
 }
 assert(extent_state_get(extent) == extent_state_active);
 if (slab) {
  extent_slab_set(extent, slab);
  extent_interior_register(tsdn, rtree_ctx, extent, szind);
 }

 if (*zero) {
  void *addr = extent_base_get(extent);
  size_t size = extent_size_get(extent);
  if (!extent_zeroed_get(extent)) {
   if (pages_purge_forced(addr, size)) {
    memset(addr, 0, size);
   }
  } else if (config_debug) {
   size_t *p = (size_t *)(uintptr_t)addr;
   for (size_t i = 0; i < size / sizeof(size_t); i++) {
    assert(p[i] == 0);
   }
  }
 }
 return extent;
}
