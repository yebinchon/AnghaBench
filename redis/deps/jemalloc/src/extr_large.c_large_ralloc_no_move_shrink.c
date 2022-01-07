
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_5__ {int * split; } ;
typedef TYPE_1__ extent_hooks_t ;
typedef int arena_t ;


 int NSIZES ;
 int arena_extent_ralloc_large_shrink (int *,int *,int *,size_t) ;
 int arena_extents_dirty_dalloc (int *,int *,TYPE_1__**,int *) ;
 int assert (int) ;
 scalar_t__ config_fill ;
 int extent_addr_get (int *) ;
 int * extent_arena_get (int *) ;
 TYPE_1__* extent_hooks_get (int *) ;
 size_t extent_size_get (int *) ;
 int * extent_split_wrapper (int *,int *,TYPE_1__**,int *,size_t,int ,int,size_t,int ,int) ;
 size_t extent_usize_get (int *) ;
 int large_dalloc_maybe_junk (int ,size_t) ;
 int opt_junk_free ;
 size_t sz_large_pad ;
 int sz_size2index (size_t) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool
large_ralloc_no_move_shrink(tsdn_t *tsdn, extent_t *extent, size_t usize) {
 arena_t *arena = extent_arena_get(extent);
 size_t oldusize = extent_usize_get(extent);
 extent_hooks_t *extent_hooks = extent_hooks_get(arena);
 size_t diff = extent_size_get(extent) - (usize + sz_large_pad);

 assert(oldusize > usize);

 if (extent_hooks->split == ((void*)0)) {
  return 1;
 }


 if (diff != 0) {
  extent_t *trail = extent_split_wrapper(tsdn, arena,
      &extent_hooks, extent, usize + sz_large_pad,
      sz_size2index(usize), 0, diff, NSIZES, 0);
  if (trail == ((void*)0)) {
   return 1;
  }

  if (config_fill && unlikely(opt_junk_free)) {
   large_dalloc_maybe_junk(extent_addr_get(trail),
       extent_size_get(trail));
  }

  arena_extents_dirty_dalloc(tsdn, arena, &extent_hooks, trail);
 }

 arena_extent_ralloc_large_shrink(tsdn, arena, extent, oldusize);

 return 0;
}
