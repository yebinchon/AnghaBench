
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_6__ {scalar_t__ (* dalloc ) (TYPE_1__*,int *,scalar_t__,int ,int ) ;} ;
typedef TYPE_1__ extent_hooks_t ;
typedef int arena_t ;


 int WITNESS_RANK_CORE ;
 int arena_ind_get (int *) ;
 int assert (int) ;
 int extent_addr_set (int *,int *) ;
 int * extent_base_get (int *) ;
 int extent_committed_get (int *) ;
 int extent_dalloc (int *,int *,int *) ;
 int extent_dalloc_default_impl (int *,scalar_t__) ;
 int extent_hook_post_reentrancy (int *) ;
 int extent_hook_pre_reentrancy (int *,int *) ;
 int extent_hooks_assure_initialized (int *,TYPE_1__**) ;
 TYPE_1__ extent_hooks_default ;
 scalar_t__ extent_size_get (int *) ;
 scalar_t__ stub1 (TYPE_1__*,int *,scalar_t__,int ,int ) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

__attribute__((used)) static bool
extent_dalloc_wrapper_try(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent) {
 bool err;

 assert(extent_base_get(extent) != ((void*)0));
 assert(extent_size_get(extent) != 0);
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 extent_addr_set(extent, extent_base_get(extent));

 extent_hooks_assure_initialized(arena, r_extent_hooks);

 if (*r_extent_hooks == &extent_hooks_default) {

  err = extent_dalloc_default_impl(extent_base_get(extent),
      extent_size_get(extent));
 } else {
  extent_hook_pre_reentrancy(tsdn, arena);
  err = ((*r_extent_hooks)->dalloc == ((void*)0) ||
      (*r_extent_hooks)->dalloc(*r_extent_hooks,
      extent_base_get(extent), extent_size_get(extent),
      extent_committed_get(extent), arena_ind_get(arena)));
  extent_hook_post_reentrancy(tsdn);
 }

 if (!err) {
  extent_dalloc(tsdn, arena, extent);
 }

 return err;
}
