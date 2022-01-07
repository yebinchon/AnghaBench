
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extent_dss_mergeable (void*,void*) ;
 scalar_t__ have_dss ;
 int maps_coalesce ;

__attribute__((used)) static bool
extent_merge_default_impl(void *addr_a, void *addr_b) {
 if (!maps_coalesce) {
  return 1;
 }
 if (have_dss && !extent_dss_mergeable(addr_a, addr_b)) {
  return 1;
 }

 return 0;
}
