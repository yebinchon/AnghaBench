
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int arena_t ;


 int arena_dalloc_bin_locked_impl (int *,int *,int *,void*,int) ;

void
arena_dalloc_bin_junked_locked(tsdn_t *tsdn, arena_t *arena, extent_t *extent,
    void *ptr) {
 arena_dalloc_bin_locked_impl(tsdn, arena, extent, ptr, 1);
}
