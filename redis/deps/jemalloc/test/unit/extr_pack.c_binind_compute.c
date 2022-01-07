
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int size ;
typedef int nbins ;
typedef int mib ;


 size_t SZ ;
 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,void*,size_t*,int *,int ) ;
 int mallctlbymib (size_t*,size_t,void*,size_t*,int *,int ) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;
 int test_fail (char*) ;

__attribute__((used)) static unsigned
binind_compute(void) {
 size_t sz;
 unsigned nbins, i;

 sz = sizeof(nbins);
 assert_d_eq(mallctl("arenas.nbins", (void *)&nbins, &sz, ((void*)0), 0), 0,
     "Unexpected mallctl failure");

 for (i = 0; i < nbins; i++) {
  size_t mib[4];
  size_t miblen = sizeof(mib)/sizeof(size_t);
  size_t size;

  assert_d_eq(mallctlnametomib("arenas.bin.0.size", mib,
      &miblen), 0, "Unexpected mallctlnametomb failure");
  mib[2] = (size_t)i;

  sz = sizeof(size);
  assert_d_eq(mallctlbymib(mib, miblen, (void *)&size, &sz, ((void*)0),
      0), 0, "Unexpected mallctlbymib failure");
  if (size == SZ) {
   return i;
  }
 }

 test_fail("Unable to compute nregs_per_run");
 return 0;
}
