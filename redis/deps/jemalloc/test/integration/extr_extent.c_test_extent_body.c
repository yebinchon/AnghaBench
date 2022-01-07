
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int purge_mib ;


 int MALLOCX_ARENA (unsigned int) ;
 int MALLOCX_TCACHE_NONE ;
 int assert_b_eq (int,int,char*) ;
 int assert_d_eq (int ,int ,char*,...) ;
 int assert_ptr_not_null (void*,char*) ;
 int assert_true (int,char*) ;
 int called_alloc ;
 int called_dalloc ;
 int called_decommit ;
 int called_split ;
 int dallocx (void*,int) ;
 int did_commit ;
 int did_decommit ;
 int did_merge ;
 int did_purge_forced ;
 int did_purge_lazy ;
 int did_split ;
 int mallctl (char*,void*,size_t*,int *,int ) ;
 int mallctlbymib (size_t*,size_t,int *,int *,int *,int ) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;
 void* mallocx (int,int) ;
 int try_alloc ;
 int try_dalloc ;
 int try_decommit ;
 size_t xallocx (void*,size_t,int ,int) ;

__attribute__((used)) static void
test_extent_body(unsigned arena_ind) {
 void *p;
 size_t large0, large1, large2, sz;
 size_t purge_mib[3];
 size_t purge_miblen;
 int flags;
 bool xallocx_success_a, xallocx_success_b, xallocx_success_c;

 flags = MALLOCX_ARENA(arena_ind) | MALLOCX_TCACHE_NONE;


 sz = sizeof(size_t);
 assert_d_eq(mallctl("arenas.lextent.0.size", (void *)&large0, &sz, ((void*)0),
     0), 0, "Unexpected arenas.lextent.0.size failure");
 assert_d_eq(mallctl("arenas.lextent.1.size", (void *)&large1, &sz, ((void*)0),
     0), 0, "Unexpected arenas.lextent.1.size failure");
 assert_d_eq(mallctl("arenas.lextent.2.size", (void *)&large2, &sz, ((void*)0),
     0), 0, "Unexpected arenas.lextent.2.size failure");


 purge_miblen = sizeof(purge_mib)/sizeof(size_t);
 assert_d_eq(mallctlnametomib("arena.0.purge", purge_mib, &purge_miblen),
     0, "Unexpected mallctlnametomib() failure");
 purge_mib[1] = (size_t)arena_ind;
 called_alloc = 0;
 try_alloc = 1;
 try_dalloc = 0;
 try_decommit = 0;
 p = mallocx(large0 * 2, flags);
 assert_ptr_not_null(p, "Unexpected mallocx() error");
 assert_true(called_alloc, "Expected alloc call");
 called_dalloc = 0;
 called_decommit = 0;
 did_purge_lazy = 0;
 did_purge_forced = 0;
 called_split = 0;
 xallocx_success_a = (xallocx(p, large0, 0, flags) == large0);
 assert_d_eq(mallctlbymib(purge_mib, purge_miblen, ((void*)0), ((void*)0), ((void*)0), 0),
     0, "Unexpected arena.%u.purge error", arena_ind);
 if (xallocx_success_a) {
  assert_true(called_dalloc, "Expected dalloc call");
  assert_true(called_decommit, "Expected decommit call");
  assert_true(did_purge_lazy || did_purge_forced,
      "Expected purge");
 }
 assert_true(called_split, "Expected split call");
 dallocx(p, flags);
 try_dalloc = 1;


 try_dalloc = 0;
 try_decommit = 1;
 p = mallocx(large0 * 2, flags);
 assert_ptr_not_null(p, "Unexpected mallocx() error");
 did_decommit = 0;
 did_commit = 0;
 called_split = 0;
 did_split = 0;
 did_merge = 0;
 xallocx_success_b = (xallocx(p, large0, 0, flags) == large0);
 assert_d_eq(mallctlbymib(purge_mib, purge_miblen, ((void*)0), ((void*)0), ((void*)0), 0),
     0, "Unexpected arena.%u.purge error", arena_ind);
 if (xallocx_success_b) {
  assert_true(did_split, "Expected split");
 }
 xallocx_success_c = (xallocx(p, large0 * 2, 0, flags) == large0 * 2);
 if (did_split) {
  assert_b_eq(did_decommit, did_commit,
      "Expected decommit/commit match");
 }
 if (xallocx_success_b && xallocx_success_c) {
  assert_true(did_merge, "Expected merge");
 }
 dallocx(p, flags);
 try_dalloc = 1;
 try_decommit = 0;


 p = mallocx(42, flags);
 assert_ptr_not_null(p, "Unexpected mallocx() error");
 dallocx(p, flags);
}
