
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hooks_mib ;
struct TYPE_7__ {struct TYPE_7__* merge; struct TYPE_7__* split; struct TYPE_7__* purge_forced; struct TYPE_7__* purge_lazy; struct TYPE_7__* decommit; struct TYPE_7__* commit; struct TYPE_7__* dalloc; struct TYPE_7__* alloc; } ;
typedef TYPE_1__ extent_hooks_t ;
struct TYPE_8__ {struct TYPE_8__* merge; struct TYPE_8__* split; struct TYPE_8__* purge_forced; struct TYPE_8__* purge_lazy; struct TYPE_8__* decommit; struct TYPE_8__* commit; struct TYPE_8__* dalloc; struct TYPE_8__* alloc; } ;


 int assert_d_eq (int ,int ,char*) ;
 int assert_ptr_eq (TYPE_1__*,TYPE_3__*,char*) ;
 int assert_ptr_ne (TYPE_1__*,int ,char*) ;
 int check_background_thread_enabled () ;
 TYPE_3__* default_hooks ;
 int extent_alloc_hook ;
 int extent_commit_hook ;
 int extent_dalloc_hook ;
 int extent_decommit_hook ;
 int extent_hooks_prep () ;
 int extent_merge_hook ;
 int extent_purge_forced_hook ;
 int extent_purge_lazy_hook ;
 int extent_split_hook ;
 TYPE_1__ hooks ;
 int mallctl (char*,void*,size_t*,int *,int ) ;
 int mallctlbymib (size_t*,size_t,void*,size_t*,void*,size_t) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;
 int test_extent_body (unsigned int) ;

__attribute__((used)) static void
test_manual_hook_body(void) {
 unsigned arena_ind;
 size_t old_size, new_size, sz;
 size_t hooks_mib[3];
 size_t hooks_miblen;
 extent_hooks_t *new_hooks, *old_hooks;

 extent_hooks_prep();

 sz = sizeof(unsigned);
 assert_d_eq(mallctl("arenas.create", (void *)&arena_ind, &sz, ((void*)0), 0),
     0, "Unexpected mallctl() failure");


 hooks_miblen = sizeof(hooks_mib)/sizeof(size_t);
 assert_d_eq(mallctlnametomib("arena.0.extent_hooks", hooks_mib,
     &hooks_miblen), 0, "Unexpected mallctlnametomib() failure");
 hooks_mib[1] = (size_t)arena_ind;
 old_size = sizeof(extent_hooks_t *);
 new_hooks = &hooks;
 new_size = sizeof(extent_hooks_t *);
 assert_d_eq(mallctlbymib(hooks_mib, hooks_miblen, (void *)&old_hooks,
     &old_size, (void *)&new_hooks, new_size), 0,
     "Unexpected extent_hooks error");
 assert_ptr_ne(old_hooks->alloc, extent_alloc_hook,
     "Unexpected extent_hooks error");
 assert_ptr_ne(old_hooks->dalloc, extent_dalloc_hook,
     "Unexpected extent_hooks error");
 assert_ptr_ne(old_hooks->commit, extent_commit_hook,
     "Unexpected extent_hooks error");
 assert_ptr_ne(old_hooks->decommit, extent_decommit_hook,
     "Unexpected extent_hooks error");
 assert_ptr_ne(old_hooks->purge_lazy, extent_purge_lazy_hook,
     "Unexpected extent_hooks error");
 assert_ptr_ne(old_hooks->purge_forced, extent_purge_forced_hook,
     "Unexpected extent_hooks error");
 assert_ptr_ne(old_hooks->split, extent_split_hook,
     "Unexpected extent_hooks error");
 assert_ptr_ne(old_hooks->merge, extent_merge_hook,
     "Unexpected extent_hooks error");

 if (!check_background_thread_enabled()) {
  test_extent_body(arena_ind);
 }


 assert_d_eq(mallctlbymib(hooks_mib, hooks_miblen, ((void*)0), ((void*)0),
     (void *)&old_hooks, new_size), 0, "Unexpected extent_hooks error");
 assert_d_eq(mallctlbymib(hooks_mib, hooks_miblen, (void *)&old_hooks,
     &old_size, ((void*)0), 0), 0, "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks, default_hooks, "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks->alloc, default_hooks->alloc,
     "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks->dalloc, default_hooks->dalloc,
     "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks->commit, default_hooks->commit,
     "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks->decommit, default_hooks->decommit,
     "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks->purge_lazy, default_hooks->purge_lazy,
     "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks->purge_forced, default_hooks->purge_forced,
     "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks->split, default_hooks->split,
     "Unexpected extent_hooks error");
 assert_ptr_eq(old_hooks->merge, default_hooks->merge,
     "Unexpected extent_hooks error");
}
