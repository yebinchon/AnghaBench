
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int large_dalloc_maybe_junk_orig (void*,size_t) ;
 int saw_junking ;
 void* watch_for_junking ;

__attribute__((used)) static void
large_dalloc_maybe_junk_intercept(void *ptr, size_t usize) {
 large_dalloc_maybe_junk_orig(ptr, usize);
 if (ptr == watch_for_junking) {
  saw_junking = 1;
 }
}
