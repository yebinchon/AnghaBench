
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int JEMALLOC_FREE_JUNK ;
 int assert_u_eq (int ,int ,char*,size_t,size_t) ;
 int large_dalloc_junk_orig (void*,size_t) ;
 int saw_junking ;
 void* watch_for_junking ;

__attribute__((used)) static void
large_dalloc_junk_intercept(void *ptr, size_t usize) {
 size_t i;

 large_dalloc_junk_orig(ptr, usize);
 for (i = 0; i < usize; i++) {
  assert_u_eq(((uint8_t *)ptr)[i], JEMALLOC_FREE_JUNK,
      "Missing junk fill for byte %zu/%zu of deallocated region",
      i, usize);
 }
 if (ptr == watch_for_junking) {
  saw_junking = 1;
 }
}
