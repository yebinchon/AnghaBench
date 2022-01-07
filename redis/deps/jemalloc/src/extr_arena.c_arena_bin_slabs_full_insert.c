
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int extent_t ;
struct TYPE_3__ {int slabs_full; } ;
typedef TYPE_1__ bin_t ;
typedef int arena_t ;


 scalar_t__ arena_is_auto (int *) ;
 int assert (int) ;
 int extent_list_append (int *,int *) ;
 scalar_t__ extent_nfree_get (int *) ;

__attribute__((used)) static void
arena_bin_slabs_full_insert(arena_t *arena, bin_t *bin, extent_t *slab) {
 assert(extent_nfree_get(slab) == 0);





 if (arena_is_auto(arena)) {
  return;
 }
 extent_list_append(&bin->slabs_full, slab);
}
