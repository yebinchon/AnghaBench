
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;
 int sdallocx (void*,int,int ) ;
 int test_fail (char*) ;

__attribute__((used)) static void
malloc_sdallocx(void) {
 void *p = malloc(1);
 if (p == ((void*)0)) {
  test_fail("Unexpected malloc() failure");
  return;
 }
 sdallocx(p, 1, 0);
}
