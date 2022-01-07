
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmuzzy ;
typedef int mib ;


 int assert_d_eq (int ,int ,char*) ;
 int do_epoch () ;
 int mallctlbymib (size_t*,size_t,void*,size_t*,int *,int ) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;

__attribute__((used)) static size_t
get_arena_pmuzzy(unsigned arena_ind) {
 do_epoch();
 size_t mib[4];
 size_t miblen = sizeof(mib)/sizeof(size_t);
 assert_d_eq(mallctlnametomib("stats.arenas.0.pmuzzy", mib, &miblen), 0,
     "Unexpected mallctlnametomib() failure");
 mib[2] = (size_t)arena_ind;
 size_t pmuzzy;
 size_t sz = sizeof(pmuzzy);
 assert_d_eq(mallctlbymib(mib, miblen, (void *)&pmuzzy, &sz, ((void*)0), 0), 0,
     "Unexpected mallctlbymib() failure");
 return pmuzzy;
}
