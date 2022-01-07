
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ALIGNMENT_ADDR2BASE (void*,size_t) ;
 scalar_t__ ALIGNMENT_ADDR2OFFSET (void*,size_t) ;
 size_t PAGE ;
 void* PAGE_ADDR2BASE (void*) ;
 int assert (int) ;
 int os_page ;
 void* os_pages_map (void*,size_t,int ,int*) ;
 int os_pages_unmap (void*,size_t) ;
 void* pages_map_slow (size_t,size_t,int*) ;

void *
pages_map(void *addr, size_t size, size_t alignment, bool *commit) {
 assert(alignment >= PAGE);
 assert(ALIGNMENT_ADDR2BASE(addr, alignment) == addr);
 void *ret = os_pages_map(addr, size, os_page, commit);
 if (ret == ((void*)0) || ret == addr) {
  return ret;
 }
 assert(addr == ((void*)0));
 if (ALIGNMENT_ADDR2OFFSET(ret, alignment) != 0) {
  os_pages_unmap(ret, size);
  return pages_map_slow(size, alignment, commit);
 }

 assert(PAGE_ADDR2BASE(ret) == ret);
 return ret;
}
