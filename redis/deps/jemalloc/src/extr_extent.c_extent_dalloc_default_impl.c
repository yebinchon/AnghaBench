
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extent_dalloc_mmap (void*,size_t) ;
 int extent_in_dss (void*) ;
 int have_dss ;

__attribute__((used)) static bool
extent_dalloc_default_impl(void *addr, size_t size) {
 if (!have_dss || !extent_in_dss(addr)) {
  return extent_dalloc_mmap(addr, size);
 }
 return 1;
}
