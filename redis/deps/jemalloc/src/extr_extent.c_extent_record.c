
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int rtree_ctx_t ;
struct TYPE_6__ {int mtx; int delay_coalesce; } ;
typedef TYPE_1__ extents_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 size_t LARGE_MINCLASS ;
 int NSIZES ;
 int assert (int) ;
 scalar_t__ extent_base_get (int *) ;
 int extent_deactivate_locked (int *,int *,TYPE_1__*,int *) ;
 int extent_hooks_assure_initialized (int *,int **) ;
 int extent_interior_deregister (int *,int *,int *) ;
 size_t extent_size_get (int *) ;
 scalar_t__ extent_slab_get (int *) ;
 int extent_slab_set (int *,int) ;
 scalar_t__ extent_state_active ;
 scalar_t__ extent_state_dirty ;
 scalar_t__ extent_state_get (int *) ;
 scalar_t__ extent_state_muzzy ;
 int extent_szind_set (int *,int ) ;
 int * extent_try_coalesce (int *,int *,int **,int *,TYPE_1__*,int *,int*,int) ;
 int extent_zeroed_get (int *) ;
 int extents_rtree ;
 scalar_t__ extents_state_get (TYPE_1__*) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int * rtree_extent_read (int *,int *,int *,uintptr_t,int) ;
 int * tsdn_rtree_ctx (int *,int *) ;

__attribute__((used)) static void
extent_record(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    extents_t *extents, extent_t *extent, bool growing_retained) {
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);

 assert((extents_state_get(extents) != extent_state_dirty &&
     extents_state_get(extents) != extent_state_muzzy) ||
     !extent_zeroed_get(extent));

 malloc_mutex_lock(tsdn, &extents->mtx);
 extent_hooks_assure_initialized(arena, r_extent_hooks);

 extent_szind_set(extent, NSIZES);
 if (extent_slab_get(extent)) {
  extent_interior_deregister(tsdn, rtree_ctx, extent);
  extent_slab_set(extent, 0);
 }

 assert(rtree_extent_read(tsdn, &extents_rtree, rtree_ctx,
     (uintptr_t)extent_base_get(extent), 1) == extent);

 if (!extents->delay_coalesce) {
  extent = extent_try_coalesce(tsdn, arena, r_extent_hooks,
      rtree_ctx, extents, extent, ((void*)0), growing_retained);
 } else if (extent_size_get(extent) >= LARGE_MINCLASS) {

  bool coalesced;
  size_t prev_size;
  do {
   prev_size = extent_size_get(extent);
   assert(extent_state_get(extent) == extent_state_active);
   extent = extent_try_coalesce(tsdn, arena,
       r_extent_hooks, rtree_ctx, extents, extent,
       &coalesced, growing_retained);
  } while (coalesced &&
      extent_size_get(extent) >= prev_size + LARGE_MINCLASS);
 }
 extent_deactivate_locked(tsdn, arena, extents, extent);

 malloc_mutex_unlock(tsdn, &extents->mtx);
}
