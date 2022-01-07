
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_11__ {int mapped; } ;
struct TYPE_10__ {TYPE_4__ stats; int extents_muzzy; int extents_dirty; } ;
typedef TYPE_1__ arena_t ;


 int * EXTENT_HOOKS_INITIALIZER ;
 size_t LG_PAGE ;
 int WITNESS_RANK_CORE ;
 int arena_large_malloc_stats_update (int *,TYPE_1__*,size_t) ;
 int arena_nactive_add (TYPE_1__*,size_t) ;
 int arena_stats_add_zu (int *,TYPE_4__*,int *,size_t) ;
 int arena_stats_lock (int *,TYPE_4__*) ;
 int arena_stats_unlock (int *,TYPE_4__*) ;
 scalar_t__ config_stats ;
 int * extent_alloc_wrapper (int *,TYPE_1__*,int **,int *,size_t,size_t,size_t,int,int ,int*,int*) ;
 int * extents_alloc (int *,TYPE_1__*,int **,int *,int *,size_t,size_t,size_t,int,int ,int*,int*) ;
 size_t sz_large_pad ;
 int sz_size2index (size_t) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

extent_t *
arena_extent_alloc_large(tsdn_t *tsdn, arena_t *arena, size_t usize,
    size_t alignment, bool *zero) {
 extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;

 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 szind_t szind = sz_size2index(usize);
 size_t mapped_add;
 bool commit = 1;
 extent_t *extent = extents_alloc(tsdn, arena, &extent_hooks,
     &arena->extents_dirty, ((void*)0), usize, sz_large_pad, alignment, 0,
     szind, zero, &commit);
 if (extent == ((void*)0)) {
  extent = extents_alloc(tsdn, arena, &extent_hooks,
      &arena->extents_muzzy, ((void*)0), usize, sz_large_pad, alignment,
      0, szind, zero, &commit);
 }
 size_t size = usize + sz_large_pad;
 if (extent == ((void*)0)) {
  extent = extent_alloc_wrapper(tsdn, arena, &extent_hooks, ((void*)0),
      usize, sz_large_pad, alignment, 0, szind, zero,
      &commit);
  if (config_stats) {





   mapped_add = size;
  }
 } else if (config_stats) {
  mapped_add = 0;
 }

 if (extent != ((void*)0)) {
  if (config_stats) {
   arena_stats_lock(tsdn, &arena->stats);
   arena_large_malloc_stats_update(tsdn, arena, usize);
   if (mapped_add != 0) {
    arena_stats_add_zu(tsdn, &arena->stats,
        &arena->stats.mapped, mapped_add);
   }
   arena_stats_unlock(tsdn, &arena->stats);
  }
  arena_nactive_add(arena, size >> LG_PAGE);
 }

 return extent;
}
