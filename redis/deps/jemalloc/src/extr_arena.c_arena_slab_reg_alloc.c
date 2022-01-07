
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int extent_t ;
struct TYPE_5__ {size_t reg_size; int bitmap_info; } ;
typedef TYPE_1__ bin_info_t ;
struct TYPE_6__ {int bitmap; } ;
typedef TYPE_2__ arena_slab_data_t ;


 int assert (int) ;
 int bitmap_full (int ,int *) ;
 size_t bitmap_sfu (int ,int *) ;
 scalar_t__ extent_addr_get (int *) ;
 int extent_nfree_dec (int *) ;
 scalar_t__ extent_nfree_get (int *) ;
 TYPE_2__* extent_slab_data_get (int *) ;

__attribute__((used)) static void *
arena_slab_reg_alloc(extent_t *slab, const bin_info_t *bin_info) {
 void *ret;
 arena_slab_data_t *slab_data = extent_slab_data_get(slab);
 size_t regind;

 assert(extent_nfree_get(slab) > 0);
 assert(!bitmap_full(slab_data->bitmap, &bin_info->bitmap_info));

 regind = bitmap_sfu(slab_data->bitmap, &bin_info->bitmap_info);
 ret = (void *)((uintptr_t)extent_addr_get(slab) +
     (uintptr_t)(bin_info->reg_size * regind));
 extent_nfree_dec(slab);
 return ret;
}
