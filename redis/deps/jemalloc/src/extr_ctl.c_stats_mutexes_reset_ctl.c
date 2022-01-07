
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int tsd_t ;
typedef size_t szind_t ;
struct TYPE_16__ {int lock; } ;
typedef TYPE_7__ bin_t ;
struct TYPE_14__ {int mtx; } ;
struct TYPE_13__ {int mtx; } ;
struct TYPE_12__ {int mtx; } ;
struct TYPE_11__ {int mtx; } ;
struct TYPE_10__ {int mtx; } ;
struct TYPE_17__ {TYPE_7__* bins; TYPE_6__* base; int tcache_ql_mtx; TYPE_5__ decay_muzzy; TYPE_4__ decay_dirty; TYPE_3__ extents_retained; TYPE_2__ extents_muzzy; TYPE_1__ extents_dirty; int extent_avail_mtx; int large_mtx; } ;
typedef TYPE_8__ arena_t ;
struct TYPE_15__ {int mtx; } ;


 int ENOENT ;
 int MUTEX_PROF_RESET (int ) ;
 size_t NBINS ;
 TYPE_8__* arena_get (int *,unsigned int,int) ;
 int background_thread_lock ;
 int bt2gctx_mtx ;
 scalar_t__ config_prof ;
 int config_stats ;
 int ctl_mtx ;
 scalar_t__ have_background_thread ;
 unsigned int narenas_total_get () ;
 scalar_t__ opt_prof ;
 int * tsd_tsdn (int *) ;

__attribute__((used)) static int
stats_mutexes_reset_ctl(tsd_t *tsd, const size_t *mib, size_t miblen,
    void *oldp, size_t *oldlenp, void *newp, size_t newlen) {
 if (!config_stats) {
  return ENOENT;
 }

 tsdn_t *tsdn = tsd_tsdn(tsd);







 malloc_mutex_lock(tsdn, &ctl_mtx); malloc_mutex_prof_data_reset(tsdn, &ctl_mtx); malloc_mutex_unlock(tsdn, &ctl_mtx);;
 if (have_background_thread) {
  malloc_mutex_lock(tsdn, &background_thread_lock); malloc_mutex_prof_data_reset(tsdn, &background_thread_lock); malloc_mutex_unlock(tsdn, &background_thread_lock);;
 }
 if (config_prof && opt_prof) {
  malloc_mutex_lock(tsdn, &bt2gctx_mtx); malloc_mutex_prof_data_reset(tsdn, &bt2gctx_mtx); malloc_mutex_unlock(tsdn, &bt2gctx_mtx);;
 }



 unsigned n = narenas_total_get();

 for (unsigned i = 0; i < n; i++) {
  arena_t *arena = arena_get(tsdn, i, 0);
  if (!arena) {
   continue;
  }
  malloc_mutex_lock(tsdn, &arena->large_mtx); malloc_mutex_prof_data_reset(tsdn, &arena->large_mtx); malloc_mutex_unlock(tsdn, &arena->large_mtx);;
  malloc_mutex_lock(tsdn, &arena->extent_avail_mtx); malloc_mutex_prof_data_reset(tsdn, &arena->extent_avail_mtx); malloc_mutex_unlock(tsdn, &arena->extent_avail_mtx);;
  malloc_mutex_lock(tsdn, &arena->extents_dirty.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->extents_dirty.mtx); malloc_mutex_unlock(tsdn, &arena->extents_dirty.mtx);;
  malloc_mutex_lock(tsdn, &arena->extents_muzzy.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->extents_muzzy.mtx); malloc_mutex_unlock(tsdn, &arena->extents_muzzy.mtx);;
  malloc_mutex_lock(tsdn, &arena->extents_retained.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->extents_retained.mtx); malloc_mutex_unlock(tsdn, &arena->extents_retained.mtx);;
  malloc_mutex_lock(tsdn, &arena->decay_dirty.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->decay_dirty.mtx); malloc_mutex_unlock(tsdn, &arena->decay_dirty.mtx);;
  malloc_mutex_lock(tsdn, &arena->decay_muzzy.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->decay_muzzy.mtx); malloc_mutex_unlock(tsdn, &arena->decay_muzzy.mtx);;
  malloc_mutex_lock(tsdn, &arena->tcache_ql_mtx); malloc_mutex_prof_data_reset(tsdn, &arena->tcache_ql_mtx); malloc_mutex_unlock(tsdn, &arena->tcache_ql_mtx);;
  malloc_mutex_lock(tsdn, &arena->base->mtx); malloc_mutex_prof_data_reset(tsdn, &arena->base->mtx); malloc_mutex_unlock(tsdn, &arena->base->mtx);;

  for (szind_t i = 0; i < NBINS; i++) {
   bin_t *bin = &arena->bins[i];
   malloc_mutex_lock(tsdn, &bin->lock); malloc_mutex_prof_data_reset(tsdn, &bin->lock); malloc_mutex_unlock(tsdn, &bin->lock);;
  }
 }

 return 0;
}
