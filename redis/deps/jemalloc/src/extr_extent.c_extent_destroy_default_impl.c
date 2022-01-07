
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extent_in_dss (void*) ;
 int have_dss ;
 int pages_unmap (void*,size_t) ;

__attribute__((used)) static void
extent_destroy_default_impl(void *addr, size_t size) {
 if (!have_dss || !extent_in_dss(addr)) {
  pages_unmap(addr, size);
 }
}
