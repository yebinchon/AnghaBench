
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* mallocx (int,int ) ;
 int test_fail (char*) ;

__attribute__((used)) static void
mallocx_free(void) {
 void *p = mallocx(1, 0);
 if (p == ((void*)0)) {
  test_fail("Unexpected mallocx() failure");
  return;
 }
 free(p);
}
