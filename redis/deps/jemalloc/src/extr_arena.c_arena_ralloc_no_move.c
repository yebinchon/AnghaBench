
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_2__ {size_t reg_size; } ;


 size_t LARGE_MAXCLASS ;
 size_t LARGE_MINCLASS ;
 size_t SMALL_MAXCLASS ;
 int arena_decay_tick (int *,int ) ;
 int assert (int) ;
 TYPE_1__* bin_infos ;
 int extent_arena_get (int *) ;
 int * iealloc (int *,void*) ;
 int large_ralloc_no_move (int *,int *,size_t,size_t,int) ;
 scalar_t__ likely (int) ;
 size_t sz_s2u (size_t) ;
 size_t sz_size2index (size_t) ;
 scalar_t__ unlikely (int) ;

bool
arena_ralloc_no_move(tsdn_t *tsdn, void *ptr, size_t oldsize, size_t size,
    size_t extra, bool zero) {

 assert(extra == 0 || size + extra <= LARGE_MAXCLASS);

 if (unlikely(size > LARGE_MAXCLASS)) {
  return 1;
 }

 extent_t *extent = iealloc(tsdn, ptr);
 size_t usize_min = sz_s2u(size);
 size_t usize_max = sz_s2u(size + extra);
 if (likely(oldsize <= SMALL_MAXCLASS && usize_min <= SMALL_MAXCLASS)) {




  assert(bin_infos[sz_size2index(oldsize)].reg_size ==
      oldsize);
  if ((usize_max > SMALL_MAXCLASS || sz_size2index(usize_max) !=
      sz_size2index(oldsize)) && (size > oldsize || usize_max <
      oldsize)) {
   return 1;
  }

  arena_decay_tick(tsdn, extent_arena_get(extent));
  return 0;
 } else if (oldsize >= LARGE_MINCLASS && usize_max >= LARGE_MINCLASS) {
  return large_ralloc_no_move(tsdn, extent, usize_min, usize_max,
      zero);
 }

 return 1;
}
