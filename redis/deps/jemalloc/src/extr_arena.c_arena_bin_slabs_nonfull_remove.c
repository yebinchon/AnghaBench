
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int extent_t ;
struct TYPE_3__ {int slabs_nonfull; } ;
typedef TYPE_1__ bin_t ;


 int extent_heap_remove (int *,int *) ;

__attribute__((used)) static void
arena_bin_slabs_nonfull_remove(bin_t *bin, extent_t *slab) {
 extent_heap_remove(&bin->slabs_nonfull, slab);
}
