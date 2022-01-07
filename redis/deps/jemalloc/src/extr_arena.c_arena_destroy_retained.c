
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_6__ {int extents_retained; } ;
typedef TYPE_1__ arena_t ;


 int extent_destroy_wrapper (int *,TYPE_1__*,int **,int *) ;
 int * extent_hooks_get (TYPE_1__*) ;
 int * extents_evict (int *,TYPE_1__*,int **,int *,int ) ;

__attribute__((used)) static void
arena_destroy_retained(tsdn_t *tsdn, arena_t *arena) {
 extent_hooks_t *extent_hooks = extent_hooks_get(arena);
 extent_t *extent;
 while ((extent = extents_evict(tsdn, arena, &extent_hooks,
     &arena->extents_retained, 0)) != ((void*)0)) {
  extent_destroy_wrapper(tsdn, arena, &extent_hooks, extent);
 }
}
