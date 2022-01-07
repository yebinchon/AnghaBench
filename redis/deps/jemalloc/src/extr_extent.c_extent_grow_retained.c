
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_ctx_t ;
typedef scalar_t__ pszind_t ;
typedef int extent_t ;
typedef scalar_t__ extent_split_interior_result_t ;
struct TYPE_22__ {void* (* alloc ) (TYPE_1__*,int *,size_t,size_t,int*,int*,int ) ;} ;
typedef TYPE_1__ extent_hooks_t ;
struct TYPE_23__ {scalar_t__ extent_grow_next; scalar_t__ retain_grow_limit; int extent_grow_mtx; int extents_retained; } ;
typedef TYPE_2__ arena_t ;


 scalar_t__ NPSIZES ;
 int NSIZES ;
 size_t PAGE ;
 size_t PAGE_CEILING (size_t) ;
 int arena_extent_sn_next (TYPE_2__*) ;
 int arena_ind_get (TYPE_2__*) ;
 int assert (int) ;
 scalar_t__ config_prof ;
 int extent_addr_randomize (int *,int *,size_t) ;
 int * extent_alloc (int *,TYPE_2__*) ;
 void* extent_alloc_default_impl (int *,TYPE_2__*,int *,size_t,size_t,int*,int*) ;
 void* extent_base_get (int *) ;
 scalar_t__ extent_commit_impl (int *,TYPE_2__*,TYPE_1__**,int *,int ,size_t,int) ;
 scalar_t__ extent_committed_get (int *) ;
 int extent_dalloc (int *,TYPE_2__*,int *) ;
 int extent_deregister_no_gdump_sub (int *,int *) ;
 int extent_gdump_add (int *,int *) ;
 int extent_hook_post_reentrancy (int *) ;
 int extent_hook_pre_reentrancy (int *,TYPE_2__*) ;
 TYPE_1__ extent_hooks_default ;
 int extent_init (int *,TYPE_2__*,void*,size_t,int,int ,int ,int ,int,int,int) ;
 int extent_interior_register (int *,int *,int *,int ) ;
 int extent_record (int *,TYPE_2__*,TYPE_1__**,int *,int *,int) ;
 scalar_t__ extent_register_no_gdump_add (int *,int *) ;
 size_t extent_size_get (int *) ;
 int extent_slab_set (int *,int) ;
 scalar_t__ extent_split_interior (int *,TYPE_2__*,TYPE_1__**,int *,int **,int **,int **,int **,int **,int *,size_t,size_t,size_t,int,int ,int) ;
 scalar_t__ extent_split_interior_error ;
 scalar_t__ extent_split_interior_ok ;
 int extent_state_active ;
 scalar_t__ extent_zeroed_get (int *) ;
 int extent_zeroed_set (int *,int) ;
 int extents_leak (int *,TYPE_2__*,TYPE_1__**,int *,int *,int) ;
 int malloc_mutex_assert_owner (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int memset (void*,int ,size_t) ;
 scalar_t__ pages_purge_forced (void*,size_t) ;
 void* stub1 (TYPE_1__*,int *,size_t,size_t,int*,int*,int ) ;
 size_t sz_pind2sz (scalar_t__) ;
 int * tsdn_rtree_ctx (int *,int *) ;

__attribute__((used)) static extent_t *
extent_grow_retained(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, size_t size, size_t pad, size_t alignment,
    bool slab, szind_t szind, bool *zero, bool *commit) {
 malloc_mutex_assert_owner(tsdn, &arena->extent_grow_mtx);
 assert(pad == 0 || !slab);
 assert(!*zero || !slab);

 size_t esize = size + pad;
 size_t alloc_size_min = esize + PAGE_CEILING(alignment) - PAGE;

 if (alloc_size_min < esize) {
  goto label_err;
 }




 pszind_t egn_skip = 0;
 size_t alloc_size = sz_pind2sz(arena->extent_grow_next + egn_skip);
 while (alloc_size < alloc_size_min) {
  egn_skip++;
  if (arena->extent_grow_next + egn_skip == NPSIZES) {

   goto label_err;
  }
  assert(arena->extent_grow_next + egn_skip < NPSIZES);
  alloc_size = sz_pind2sz(arena->extent_grow_next + egn_skip);
 }

 extent_t *extent = extent_alloc(tsdn, arena);
 if (extent == ((void*)0)) {
  goto label_err;
 }
 bool zeroed = 0;
 bool committed = 0;

 void *ptr;
 if (*r_extent_hooks == &extent_hooks_default) {
  ptr = extent_alloc_default_impl(tsdn, arena, ((void*)0),
      alloc_size, PAGE, &zeroed, &committed);
 } else {
  extent_hook_pre_reentrancy(tsdn, arena);
  ptr = (*r_extent_hooks)->alloc(*r_extent_hooks, ((void*)0),
      alloc_size, PAGE, &zeroed, &committed,
      arena_ind_get(arena));
  extent_hook_post_reentrancy(tsdn);
 }

 extent_init(extent, arena, ptr, alloc_size, 0, NSIZES,
     arena_extent_sn_next(arena), extent_state_active, zeroed,
     committed, 1);
 if (ptr == ((void*)0)) {
  extent_dalloc(tsdn, arena, extent);
  goto label_err;
 }

 if (extent_register_no_gdump_add(tsdn, extent)) {
  extents_leak(tsdn, arena, r_extent_hooks,
      &arena->extents_retained, extent, 1);
  goto label_err;
 }

 if (extent_zeroed_get(extent) && extent_committed_get(extent)) {
  *zero = 1;
 }
 if (extent_committed_get(extent)) {
  *commit = 1;
 }

 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);

 extent_t *lead;
 extent_t *trail;
 extent_t *to_leak;
 extent_t *to_salvage;
 extent_split_interior_result_t result = extent_split_interior(
     tsdn, arena, r_extent_hooks, rtree_ctx, &extent, &lead, &trail,
     &to_leak, &to_salvage, ((void*)0), size, pad, alignment, slab, szind,
     1);

 if (result == extent_split_interior_ok) {
  if (lead != ((void*)0)) {
   extent_record(tsdn, arena, r_extent_hooks,
       &arena->extents_retained, lead, 1);
  }
  if (trail != ((void*)0)) {
   extent_record(tsdn, arena, r_extent_hooks,
       &arena->extents_retained, trail, 1);
  }
 } else {




  assert(result == extent_split_interior_error);
  if (to_salvage != ((void*)0)) {
   if (config_prof) {
    extent_gdump_add(tsdn, to_salvage);
   }
   extent_record(tsdn, arena, r_extent_hooks,
       &arena->extents_retained, to_salvage, 1);
  }
  if (to_leak != ((void*)0)) {
   extent_deregister_no_gdump_sub(tsdn, to_leak);
   extents_leak(tsdn, arena, r_extent_hooks,
       &arena->extents_retained, to_leak, 1);
  }
  goto label_err;
 }

 if (*commit && !extent_committed_get(extent)) {
  if (extent_commit_impl(tsdn, arena, r_extent_hooks, extent, 0,
      extent_size_get(extent), 1)) {
   extent_record(tsdn, arena, r_extent_hooks,
       &arena->extents_retained, extent, 1);
   goto label_err;
  }
  extent_zeroed_set(extent, 1);
 }





 if (arena->extent_grow_next + egn_skip + 1 <=
     arena->retain_grow_limit) {
  arena->extent_grow_next += egn_skip + 1;
 } else {
  arena->extent_grow_next = arena->retain_grow_limit;
 }

 malloc_mutex_unlock(tsdn, &arena->extent_grow_mtx);

 if (config_prof) {

  extent_gdump_add(tsdn, extent);
 }
 if (pad != 0) {
  extent_addr_randomize(tsdn, extent, alignment);
 }
 if (slab) {
  rtree_ctx_t rtree_ctx_fallback;
  rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn,
      &rtree_ctx_fallback);

  extent_slab_set(extent, 1);
  extent_interior_register(tsdn, rtree_ctx, extent, szind);
 }
 if (*zero && !extent_zeroed_get(extent)) {
  void *addr = extent_base_get(extent);
  size_t size = extent_size_get(extent);
  if (pages_purge_forced(addr, size)) {
   memset(addr, 0, size);
  }
 }

 return extent;
label_err:
 malloc_mutex_unlock(tsdn, &arena->extent_grow_mtx);
 return ((void*)0);
}
