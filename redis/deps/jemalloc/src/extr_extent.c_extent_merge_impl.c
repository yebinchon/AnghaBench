
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int rtree_leaf_elm_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
struct TYPE_6__ {int (* merge ) (TYPE_1__*,int ,scalar_t__,int ,scalar_t__,int ,int ) ;} ;
typedef TYPE_1__ extent_hooks_t ;
typedef int arena_t ;


 int NSIZES ;
 int WITNESS_RANK_CORE ;
 int arena_ind_get (int *) ;
 int extent_arena_get (int *) ;
 int extent_base_get (int *) ;
 int extent_committed_get (int *) ;
 int extent_dalloc (int *,int ,int *) ;
 int extent_hook_post_reentrancy (int *) ;
 int extent_hook_pre_reentrancy (int *,int *) ;
 int extent_hooks_assure_initialized (int *,TYPE_1__**) ;
 TYPE_1__ extent_hooks_default ;
 int extent_lock2 (int *,int *,int *) ;
 int extent_merge_default_impl (int ,int ) ;
 int extent_rtree_leaf_elms_lookup (int *,int *,int *,int,int,int **,int **) ;
 int extent_rtree_write_acquired (int *,int *,int *,int *,int ,int) ;
 scalar_t__ extent_size_get (int *) ;
 int extent_size_set (int *,scalar_t__) ;
 scalar_t__ extent_sn_get (int *) ;
 int extent_sn_set (int *,scalar_t__) ;
 int extent_szind_set (int *,int ) ;
 int extent_unlock2 (int *,int *,int *) ;
 scalar_t__ extent_zeroed_get (int *) ;
 int extent_zeroed_set (int *,int) ;
 int extents_rtree ;
 int rtree_leaf_elm_write (int *,int *,int *,int *,int ,int) ;
 int stub1 (TYPE_1__*,int ,scalar_t__,int ,scalar_t__,int ,int ) ;
 int * tsdn_rtree_ctx (int *,int *) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int) ;

__attribute__((used)) static bool
extent_merge_impl(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *a, extent_t *b,
    bool growing_retained) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, growing_retained ? 1 : 0);

 extent_hooks_assure_initialized(arena, r_extent_hooks);

 if ((*r_extent_hooks)->merge == ((void*)0)) {
  return 1;
 }

 bool err;
 if (*r_extent_hooks == &extent_hooks_default) {

  err = extent_merge_default_impl(extent_base_get(a),
      extent_base_get(b));
 } else {
  extent_hook_pre_reentrancy(tsdn, arena);
  err = (*r_extent_hooks)->merge(*r_extent_hooks,
      extent_base_get(a), extent_size_get(a), extent_base_get(b),
      extent_size_get(b), extent_committed_get(a),
      arena_ind_get(arena));
  extent_hook_post_reentrancy(tsdn);
 }

 if (err) {
  return 1;
 }






 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);
 rtree_leaf_elm_t *a_elm_a, *a_elm_b, *b_elm_a, *b_elm_b;
 extent_rtree_leaf_elms_lookup(tsdn, rtree_ctx, a, 1, 0, &a_elm_a,
     &a_elm_b);
 extent_rtree_leaf_elms_lookup(tsdn, rtree_ctx, b, 1, 0, &b_elm_a,
     &b_elm_b);

 extent_lock2(tsdn, a, b);

 if (a_elm_b != ((void*)0)) {
  rtree_leaf_elm_write(tsdn, &extents_rtree, a_elm_b, ((void*)0),
      NSIZES, 0);
 }
 if (b_elm_b != ((void*)0)) {
  rtree_leaf_elm_write(tsdn, &extents_rtree, b_elm_a, ((void*)0),
      NSIZES, 0);
 } else {
  b_elm_b = b_elm_a;
 }

 extent_size_set(a, extent_size_get(a) + extent_size_get(b));
 extent_szind_set(a, NSIZES);
 extent_sn_set(a, (extent_sn_get(a) < extent_sn_get(b)) ?
     extent_sn_get(a) : extent_sn_get(b));
 extent_zeroed_set(a, extent_zeroed_get(a) && extent_zeroed_get(b));

 extent_rtree_write_acquired(tsdn, a_elm_a, b_elm_b, a, NSIZES, 0);

 extent_unlock2(tsdn, a, b);

 extent_dalloc(tsdn, extent_arena_get(b), b);

 return 0;
}
