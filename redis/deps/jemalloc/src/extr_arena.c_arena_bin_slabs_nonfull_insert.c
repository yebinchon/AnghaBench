
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int extent_t ;
struct TYPE_3__ {int slabs_nonfull; } ;
typedef TYPE_1__ bin_t ;


 int assert (int) ;
 int extent_heap_insert (int *,int *) ;
 scalar_t__ extent_nfree_get (int *) ;

__attribute__((used)) static void
arena_bin_slabs_nonfull_insert(bin_t *bin, extent_t *slab) {
 assert(extent_nfree_get(slab) > 0);
 extent_heap_insert(&bin->slabs_nonfull, slab);
}
