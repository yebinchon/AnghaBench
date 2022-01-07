
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int nregs ;
typedef int mib ;


 int assert_d_eq (int ,int ,char*) ;
 unsigned int binind_compute () ;
 int mallctlbymib (size_t*,size_t,void*,size_t*,int *,int ) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;

__attribute__((used)) static size_t
nregs_per_run_compute(void) {
 uint32_t nregs;
 size_t sz;
 unsigned binind = binind_compute();
 size_t mib[4];
 size_t miblen = sizeof(mib)/sizeof(size_t);

 assert_d_eq(mallctlnametomib("arenas.bin.0.nregs", mib, &miblen), 0,
     "Unexpected mallctlnametomb failure");
 mib[2] = (size_t)binind;
 sz = sizeof(nregs);
 assert_d_eq(mallctlbymib(mib, miblen, (void *)&nregs, &sz, ((void*)0),
     0), 0, "Unexpected mallctlbymib failure");
 return nregs;
}
