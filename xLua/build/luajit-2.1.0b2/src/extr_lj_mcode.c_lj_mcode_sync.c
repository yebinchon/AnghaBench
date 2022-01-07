
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED (void*) ;
 int VALGRIND_DISCARD_TRANSLATIONS (void*,int) ;
 int __clear_cache (void*,void*) ;
 int lj_vm_cachesync (void*,void*) ;
 int sys_icache_invalidate (void*,int) ;

void lj_mcode_sync(void *start, void *end)
{
  __clear_cache(start, end);



}
