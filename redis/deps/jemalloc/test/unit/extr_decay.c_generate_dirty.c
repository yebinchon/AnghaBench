
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MALLOCX_ARENA (unsigned int) ;
 int MALLOCX_TCACHE_NONE ;
 int dallocx (void*,int) ;
 void* do_mallocx (size_t,int) ;

__attribute__((used)) static void
generate_dirty(unsigned arena_ind, size_t size) {
 int flags = MALLOCX_ARENA(arena_ind) | MALLOCX_TCACHE_NONE;
 void *p = do_mallocx(size, flags);
 dallocx(p, flags);
}
