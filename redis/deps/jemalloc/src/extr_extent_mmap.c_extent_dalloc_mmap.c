
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int opt_retain ;
 int pages_unmap (void*,size_t) ;

bool
extent_dalloc_mmap(void *addr, size_t size) {
 if (!opt_retain) {
  pages_unmap(addr, size);
 }
 return opt_retain;
}
