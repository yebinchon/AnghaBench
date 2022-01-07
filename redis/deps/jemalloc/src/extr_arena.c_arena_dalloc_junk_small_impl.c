
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg_size; } ;
typedef TYPE_1__ bin_info_t ;


 int JEMALLOC_FREE_JUNK ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void
arena_dalloc_junk_small_impl(void *ptr, const bin_info_t *bin_info) {
 memset(ptr, JEMALLOC_FREE_JUNK, bin_info->reg_size);
}
