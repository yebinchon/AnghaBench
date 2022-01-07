
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_16__ {int curregs; int ndalloc; } ;
struct TYPE_17__ {TYPE_1__ stats; int * slabcur; } ;
typedef TYPE_2__ bin_t ;
struct TYPE_18__ {unsigned int nregs; } ;
typedef TYPE_3__ bin_info_t ;
struct TYPE_19__ {TYPE_2__* bins; } ;
typedef TYPE_4__ arena_t ;
typedef int arena_slab_data_t ;


 int arena_bin_lower_slab (int *,TYPE_4__*,int *,TYPE_2__*) ;
 int arena_bin_slabs_full_remove (TYPE_4__*,TYPE_2__*,int *) ;
 int arena_dalloc_bin_slab (int *,TYPE_4__*,int *,TYPE_2__*) ;
 int arena_dalloc_junk_small (void*,TYPE_3__ const*) ;
 int arena_dissociate_bin_slab (TYPE_4__*,int *,TYPE_2__*) ;
 int arena_slab_reg_dalloc (int *,int *,void*) ;
 TYPE_3__* bin_infos ;
 scalar_t__ config_fill ;
 scalar_t__ config_stats ;
 unsigned int extent_nfree_get (int *) ;
 int * extent_slab_data_get (int *) ;
 size_t extent_szind_get (int *) ;
 int opt_junk_free ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
arena_dalloc_bin_locked_impl(tsdn_t *tsdn, arena_t *arena, extent_t *slab,
    void *ptr, bool junked) {
 arena_slab_data_t *slab_data = extent_slab_data_get(slab);
 szind_t binind = extent_szind_get(slab);
 bin_t *bin = &arena->bins[binind];
 const bin_info_t *bin_info = &bin_infos[binind];

 if (!junked && config_fill && unlikely(opt_junk_free)) {
  arena_dalloc_junk_small(ptr, bin_info);
 }

 arena_slab_reg_dalloc(slab, slab_data, ptr);
 unsigned nfree = extent_nfree_get(slab);
 if (nfree == bin_info->nregs) {
  arena_dissociate_bin_slab(arena, slab, bin);
  arena_dalloc_bin_slab(tsdn, arena, slab, bin);
 } else if (nfree == 1 && slab != bin->slabcur) {
  arena_bin_slabs_full_remove(arena, bin, slab);
  arena_bin_lower_slab(tsdn, arena, slab, bin);
 }

 if (config_stats) {
  bin->stats.ndalloc++;
  bin->stats.curregs--;
 }
}
