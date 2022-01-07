
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_hooks_t ;
typedef int arena_t ;


 int * EXTENT_HOOKS_INITIALIZER ;
 int * extent_hooks_get (int *) ;

__attribute__((used)) static void
extent_hooks_assure_initialized(arena_t *arena,
    extent_hooks_t **r_extent_hooks) {
 if (*r_extent_hooks == EXTENT_HOOKS_INITIALIZER) {
  *r_extent_hooks = extent_hooks_get(arena);
 }
}
