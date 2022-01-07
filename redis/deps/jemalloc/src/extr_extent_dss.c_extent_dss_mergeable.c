
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATOMIC_ACQUIRE ;
 void* atomic_load_p (int *,int ) ;
 int cassert (int ) ;
 scalar_t__ dss_base ;
 int dss_max ;
 scalar_t__ extent_in_dss_helper (void*,void*) ;
 int have_dss ;

bool
extent_dss_mergeable(void *addr_a, void *addr_b) {
 void *max;

 cassert(have_dss);

 if ((uintptr_t)addr_a < (uintptr_t)dss_base && (uintptr_t)addr_b <
     (uintptr_t)dss_base) {
  return 1;
 }

 max = atomic_load_p(&dss_max, ATOMIC_ACQUIRE);
 return (extent_in_dss_helper(addr_a, max) ==
     extent_in_dss_helper(addr_b, max));
}
