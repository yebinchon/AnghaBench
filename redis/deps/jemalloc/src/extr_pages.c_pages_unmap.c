
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* PAGE_ADDR2BASE (void*) ;
 size_t PAGE_CEILING (size_t) ;
 int assert (int) ;
 int os_pages_unmap (void*,size_t) ;

void
pages_unmap(void *addr, size_t size) {
 assert(PAGE_ADDR2BASE(addr) == addr);
 assert(PAGE_CEILING(size) == size);

 os_pages_unmap(addr, size);
}
