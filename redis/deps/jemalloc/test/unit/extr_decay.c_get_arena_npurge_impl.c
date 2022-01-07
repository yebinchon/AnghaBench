
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int npurge ;
typedef int mib ;


 int ENOENT ;
 int assert_d_eq (int ,int ,char*) ;
 scalar_t__ config_stats ;
 int mallctlbymib (size_t*,size_t,void*,size_t*,int *,int ) ;
 int mallctlnametomib (char const*,size_t*,size_t*) ;

__attribute__((used)) static uint64_t
get_arena_npurge_impl(const char *mibname, unsigned arena_ind) {
 size_t mib[4];
 size_t miblen = sizeof(mib)/sizeof(size_t);
 assert_d_eq(mallctlnametomib(mibname, mib, &miblen), 0,
     "Unexpected mallctlnametomib() failure");
 mib[2] = (size_t)arena_ind;
 uint64_t npurge = 0;
 size_t sz = sizeof(npurge);
 assert_d_eq(mallctlbymib(mib, miblen, (void *)&npurge, &sz, ((void*)0), 0),
     config_stats ? 0 : ENOENT, "Unexpected mallctlbymib() failure");
 return npurge;
}
