
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ extents_t ;
typedef int extent_t ;
typedef int arena_t ;


 int assert (int) ;
 int * extent_arena_get (int const*) ;
 scalar_t__ extent_committed_get (int const*) ;
 scalar_t__ extent_state_active ;
 scalar_t__ extent_state_get (int const*) ;

__attribute__((used)) static bool
extent_can_coalesce(arena_t *arena, extents_t *extents, const extent_t *inner,
    const extent_t *outer) {
 assert(extent_arena_get(inner) == arena);
 if (extent_arena_get(outer) != arena) {
  return 0;
 }

 assert(extent_state_get(inner) == extent_state_active);
 if (extent_state_get(outer) != extents->state) {
  return 0;
 }

 if (extent_committed_get(inner) != extent_committed_get(outer)) {
  return 0;
 }

 return 1;
}
