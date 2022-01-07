
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_5__ {int extent_grow_mtx; int extents_retained; } ;
typedef TYPE_1__ arena_t ;


 int assert (int) ;
 scalar_t__ config_prof ;
 int extent_gdump_add (int *,int *) ;
 int * extent_grow_retained (int *,TYPE_1__*,int **,size_t,size_t,size_t,int,int ,int*,int*) ;
 int * extent_recycle (int *,TYPE_1__*,int **,int *,void*,size_t,size_t,size_t,int,int ,int*,int*,int) ;
 int malloc_mutex_assert_not_owner (int *,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 scalar_t__ opt_retain ;

__attribute__((used)) static extent_t *
extent_alloc_retained(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit) {
 assert(size != 0);
 assert(alignment != 0);

 malloc_mutex_lock(tsdn, &arena->extent_grow_mtx);

 extent_t *extent = extent_recycle(tsdn, arena, r_extent_hooks,
     &arena->extents_retained, new_addr, size, pad, alignment, slab,
     szind, zero, commit, 1);
 if (extent != ((void*)0)) {
  malloc_mutex_unlock(tsdn, &arena->extent_grow_mtx);
  if (config_prof) {
   extent_gdump_add(tsdn, extent);
  }
 } else if (opt_retain && new_addr == ((void*)0)) {
  extent = extent_grow_retained(tsdn, arena, r_extent_hooks, size,
      pad, alignment, slab, szind, zero, commit);

 } else {
  malloc_mutex_unlock(tsdn, &arena->extent_grow_mtx);
 }
 malloc_mutex_assert_not_owner(tsdn, &arena->extent_grow_mtx);

 return extent;
}
