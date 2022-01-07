
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hooks_mib ;
typedef int extent_hooks_t ;


 int assert_b_eq (int,int,char*) ;
 int assert_d_eq (int ,int ,char*) ;
 int extent_hooks_prep () ;
 int hooks ;
 int mallctl (char*,void*,size_t*,int *,int ) ;
 int mallctlbymib (size_t*,size_t,void*,size_t*,void*,size_t) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;

__attribute__((used)) static void
test_manual_hook_auto_arena(void) {
 unsigned narenas;
 size_t old_size, new_size, sz;
 size_t hooks_mib[3];
 size_t hooks_miblen;
 extent_hooks_t *new_hooks, *old_hooks;

 extent_hooks_prep();

 sz = sizeof(unsigned);

 assert_d_eq(mallctl("opt.narenas", (void *)&narenas, &sz, ((void*)0), 0),
     0, "Unexpected mallctl() failure");
 if (narenas == 1) {
  return;
 }


 hooks_miblen = sizeof(hooks_mib)/sizeof(size_t);
 assert_d_eq(mallctlnametomib("arena.0.extent_hooks", hooks_mib,
     &hooks_miblen), 0, "Unexpected mallctlnametomib() failure");
 hooks_mib[1] = 1;
 old_size = sizeof(extent_hooks_t *);
 new_hooks = &hooks;
 new_size = sizeof(extent_hooks_t *);
 assert_d_eq(mallctlbymib(hooks_mib, hooks_miblen, (void *)&old_hooks,
     &old_size, (void *)&new_hooks, new_size), 0,
     "Unexpected extent_hooks error");
 static bool auto_arena_created = 0;
 if (old_hooks != &hooks) {
  assert_b_eq(auto_arena_created, 0,
      "Expected auto arena 1 created only once.");
  auto_arena_created = 1;
 }
}
