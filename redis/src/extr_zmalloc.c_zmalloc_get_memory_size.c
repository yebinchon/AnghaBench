
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int size ;
typedef unsigned int int64_t ;


 int CTL_HW ;
 int HW_MEMSIZE ;
 int HW_PHYSMEM ;
 int HW_PHYSMEM64 ;
 int HW_REALMEM ;
 int _SC_PAGESIZE ;
 int _SC_PHYS_PAGES ;
 scalar_t__ sysconf (int ) ;
 scalar_t__ sysctl (int*,int,unsigned int*,size_t*,int *,int ) ;

size_t zmalloc_get_memory_size(void) {
    return 0L;




}
