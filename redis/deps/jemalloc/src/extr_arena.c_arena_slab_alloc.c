
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_11__ {int bitmap_info; int nregs; int slab_size; int reg_size; } ;
typedef TYPE_1__ bin_info_t ;
struct TYPE_12__ {int extents_muzzy; int extents_dirty; } ;
typedef TYPE_2__ arena_t ;
struct TYPE_13__ {int bitmap; } ;
typedef TYPE_3__ arena_slab_data_t ;


 int * EXTENT_HOOKS_INITIALIZER ;
 int LG_PAGE ;
 int PAGE ;
 int WITNESS_RANK_CORE ;
 int arena_nactive_add (TYPE_2__*,int) ;
 int * arena_slab_alloc_hard (int *,TYPE_2__*,int **,TYPE_1__ const*,int ) ;
 int assert (int ) ;
 int bitmap_init (int ,int *,int) ;
 int extent_nfree_set (int *,int ) ;
 int extent_size_get (int *) ;
 TYPE_3__* extent_slab_data_get (int *) ;
 int extent_slab_get (int *) ;
 int * extents_alloc (int *,TYPE_2__*,int **,int *,int *,int ,int ,int ,int,int ,int*,int*) ;
 int sz_size2index (int ) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

__attribute__((used)) static extent_t *
arena_slab_alloc(tsdn_t *tsdn, arena_t *arena, szind_t binind,
    const bin_info_t *bin_info) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;
 szind_t szind = sz_size2index(bin_info->reg_size);
 bool zero = 0;
 bool commit = 1;
 extent_t *slab = extents_alloc(tsdn, arena, &extent_hooks,
     &arena->extents_dirty, ((void*)0), bin_info->slab_size, 0, PAGE, 1,
     binind, &zero, &commit);
 if (slab == ((void*)0)) {
  slab = extents_alloc(tsdn, arena, &extent_hooks,
      &arena->extents_muzzy, ((void*)0), bin_info->slab_size, 0, PAGE,
      1, binind, &zero, &commit);
 }
 if (slab == ((void*)0)) {
  slab = arena_slab_alloc_hard(tsdn, arena, &extent_hooks,
      bin_info, szind);
  if (slab == ((void*)0)) {
   return ((void*)0);
  }
 }
 assert(extent_slab_get(slab));


 arena_slab_data_t *slab_data = extent_slab_data_get(slab);
 extent_nfree_set(slab, bin_info->nregs);
 bitmap_init(slab_data->bitmap, &bin_info->bitmap_info, 0);

 arena_nactive_add(arena, extent_size_get(slab) >> LG_PAGE);

 return slab;
}
