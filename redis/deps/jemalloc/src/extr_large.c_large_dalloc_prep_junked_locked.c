
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 int extent_arena_get (int *) ;
 int large_dalloc_prep_impl (int *,int ,int *,int) ;

void
large_dalloc_prep_junked_locked(tsdn_t *tsdn, extent_t *extent) {
 large_dalloc_prep_impl(tsdn, extent_arena_get(extent), extent, 1);
}
