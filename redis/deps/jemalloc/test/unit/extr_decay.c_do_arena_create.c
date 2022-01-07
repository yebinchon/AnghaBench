
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int muzzy_decay_ms ;
typedef int mib ;
typedef int dirty_decay_ms ;


 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,void*,size_t*,int *,int ) ;
 int mallctlbymib (size_t*,size_t,int *,int *,void*,int) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;

__attribute__((used)) static unsigned
do_arena_create(ssize_t dirty_decay_ms, ssize_t muzzy_decay_ms) {
 unsigned arena_ind;
 size_t sz = sizeof(unsigned);
 assert_d_eq(mallctl("arenas.create", (void *)&arena_ind, &sz, ((void*)0), 0),
     0, "Unexpected mallctl() failure");
 size_t mib[3];
 size_t miblen = sizeof(mib)/sizeof(size_t);

 assert_d_eq(mallctlnametomib("arena.0.dirty_decay_ms", mib, &miblen),
     0, "Unexpected mallctlnametomib() failure");
 mib[1] = (size_t)arena_ind;
 assert_d_eq(mallctlbymib(mib, miblen, ((void*)0), ((void*)0),
     (void *)&dirty_decay_ms, sizeof(dirty_decay_ms)), 0,
     "Unexpected mallctlbymib() failure");

 assert_d_eq(mallctlnametomib("arena.0.muzzy_decay_ms", mib, &miblen),
     0, "Unexpected mallctlnametomib() failure");
 mib[1] = (size_t)arena_ind;
 assert_d_eq(mallctlbymib(mib, miblen, ((void*)0), ((void*)0),
     (void *)&muzzy_decay_ms, sizeof(muzzy_decay_ms)), 0,
     "Unexpected mallctlbymib() failure");

 return arena_ind;
}
