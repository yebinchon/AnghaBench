
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg_size; } ;
typedef TYPE_1__ bin_info_t ;


 int JEMALLOC_ALLOC_JUNK ;
 int memset (void*,int ,int ) ;

void
arena_alloc_junk_small(void *ptr, const bin_info_t *bin_info, bool zero) {
 if (!zero) {
  memset(ptr, JEMALLOC_ALLOC_JUNK, bin_info->reg_size);
 }
}
