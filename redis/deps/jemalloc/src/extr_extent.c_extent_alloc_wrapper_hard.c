
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int extent_t ;
struct TYPE_16__ {void* (* alloc ) (TYPE_1__*,void*,size_t,size_t,int*,int*,int ) ;} ;
typedef TYPE_1__ extent_hooks_t ;
struct TYPE_17__ {int extents_retained; } ;
typedef TYPE_2__ arena_t ;


 int arena_extent_sn_next (TYPE_2__*) ;
 int arena_ind_get (TYPE_2__*) ;
 int extent_addr_randomize (int *,int *,size_t) ;
 int * extent_alloc (int *,TYPE_2__*) ;
 void* extent_alloc_default_impl (int *,TYPE_2__*,void*,size_t,size_t,int*,int*) ;
 int extent_dalloc (int *,TYPE_2__*,int *) ;
 int extent_hook_post_reentrancy (int *) ;
 int extent_hook_pre_reentrancy (int *,TYPE_2__*) ;
 TYPE_1__ extent_hooks_default ;
 int extent_init (int *,TYPE_2__*,void*,size_t,int,int ,int ,int ,int,int,int) ;
 scalar_t__ extent_register (int *,int *) ;
 int extent_state_active ;
 int extents_leak (int *,TYPE_2__*,TYPE_1__**,int *,int *,int) ;
 void* stub1 (TYPE_1__*,void*,size_t,size_t,int*,int*,int ) ;

__attribute__((used)) static extent_t *
extent_alloc_wrapper_hard(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit) {
 size_t esize = size + pad;
 extent_t *extent = extent_alloc(tsdn, arena);
 if (extent == ((void*)0)) {
  return ((void*)0);
 }
 void *addr;
 if (*r_extent_hooks == &extent_hooks_default) {

  addr = extent_alloc_default_impl(tsdn, arena, new_addr, esize,
      alignment, zero, commit);
 } else {
  extent_hook_pre_reentrancy(tsdn, arena);
  addr = (*r_extent_hooks)->alloc(*r_extent_hooks, new_addr,
      esize, alignment, zero, commit, arena_ind_get(arena));
  extent_hook_post_reentrancy(tsdn);
 }
 if (addr == ((void*)0)) {
  extent_dalloc(tsdn, arena, extent);
  return ((void*)0);
 }
 extent_init(extent, arena, addr, esize, slab, szind,
     arena_extent_sn_next(arena), extent_state_active, *zero, *commit,
     1);
 if (pad != 0) {
  extent_addr_randomize(tsdn, extent, alignment);
 }
 if (extent_register(tsdn, extent)) {
  extents_leak(tsdn, arena, r_extent_hooks,
      &arena->extents_retained, extent, 0);
  return ((void*)0);
 }

 return extent;
}
