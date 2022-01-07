
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_9__ {int curregs; int nrequests; int nmalloc; } ;
struct TYPE_10__ {int lock; TYPE_1__ stats; int * slabcur; } ;
typedef TYPE_2__ bin_t ;
struct TYPE_11__ {TYPE_2__* bins; } ;
typedef TYPE_3__ arena_t ;


 size_t NBINS ;
 int arena_alloc_junk_small (void*,int *,int) ;
 void* arena_bin_malloc_hard (int *,TYPE_3__*,TYPE_2__*,size_t) ;
 int arena_decay_tick (int *,TYPE_3__*) ;
 scalar_t__ arena_prof_accum (int *,TYPE_3__*,size_t) ;
 void* arena_slab_reg_alloc (int *,int *) ;
 int assert (int) ;
 int * bin_infos ;
 scalar_t__ config_fill ;
 scalar_t__ config_prof ;
 scalar_t__ config_stats ;
 scalar_t__ extent_nfree_get (int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int memset (void*,int ,size_t) ;
 int opt_junk_alloc ;
 int opt_zero ;
 int prof_idump (int *) ;
 size_t sz_index2size (size_t) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void *
arena_malloc_small(tsdn_t *tsdn, arena_t *arena, szind_t binind, bool zero) {
 void *ret;
 bin_t *bin;
 size_t usize;
 extent_t *slab;

 assert(binind < NBINS);
 bin = &arena->bins[binind];
 usize = sz_index2size(binind);

 malloc_mutex_lock(tsdn, &bin->lock);
 if ((slab = bin->slabcur) != ((void*)0) && extent_nfree_get(slab) > 0) {
  ret = arena_slab_reg_alloc(slab, &bin_infos[binind]);
 } else {
  ret = arena_bin_malloc_hard(tsdn, arena, bin, binind);
 }

 if (ret == ((void*)0)) {
  malloc_mutex_unlock(tsdn, &bin->lock);
  return ((void*)0);
 }

 if (config_stats) {
  bin->stats.nmalloc++;
  bin->stats.nrequests++;
  bin->stats.curregs++;
 }
 malloc_mutex_unlock(tsdn, &bin->lock);
 if (config_prof && arena_prof_accum(tsdn, arena, usize)) {
  prof_idump(tsdn);
 }

 if (!zero) {
  if (config_fill) {
   if (unlikely(opt_junk_alloc)) {
    arena_alloc_junk_small(ret,
        &bin_infos[binind], 0);
   } else if (unlikely(opt_zero)) {
    memset(ret, 0, usize);
   }
  }
 } else {
  if (config_fill && unlikely(opt_junk_alloc)) {
   arena_alloc_junk_small(ret, &bin_infos[binind],
       1);
  }
  memset(ret, 0, usize);
 }

 arena_decay_tick(tsdn, arena);
 return ret;
}
