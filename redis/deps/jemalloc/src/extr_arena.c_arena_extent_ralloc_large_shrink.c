
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_5__ {int stats; } ;
typedef TYPE_1__ arena_t ;


 size_t LG_PAGE ;
 int arena_large_ralloc_stats_update (int *,TYPE_1__*,size_t,size_t) ;
 int arena_nactive_sub (TYPE_1__*,size_t) ;
 int arena_stats_lock (int *,int *) ;
 int arena_stats_unlock (int *,int *) ;
 scalar_t__ config_stats ;
 size_t extent_usize_get (int *) ;

void
arena_extent_ralloc_large_shrink(tsdn_t *tsdn, arena_t *arena, extent_t *extent,
    size_t oldusize) {
 size_t usize = extent_usize_get(extent);
 size_t udiff = oldusize - usize;

 if (config_stats) {
  arena_stats_lock(tsdn, &arena->stats);
  arena_large_ralloc_stats_update(tsdn, arena, oldusize, usize);
  arena_stats_unlock(tsdn, &arena->stats);
 }
 arena_nactive_sub(arena, udiff >> LG_PAGE);
}
