
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;


 int CACHELINE ;
 size_t PTR_CEILING (size_t) ;
 int TSDN_NULL ;
 int arena_get (int ,int ,int) ;
 int arena_ichoose (int *,int *) ;
 int * ipallocztm (int ,size_t,int ,int,int *,int,int ) ;
 int stack_nelms ;
 size_t sz_sa2u (size_t,int ) ;
 int tcache_arena_associate (int ,int *,int ) ;
 int tcache_init (int *,int *,void*) ;
 int tsd_tsdn (int *) ;

tcache_t *
tcache_create_explicit(tsd_t *tsd) {
 tcache_t *tcache;
 size_t size, stack_offset;

 size = sizeof(tcache_t);

 size = PTR_CEILING(size);
 stack_offset = size;
 size += stack_nelms * sizeof(void *);

 size = sz_sa2u(size, CACHELINE);

 tcache = ipallocztm(tsd_tsdn(tsd), size, CACHELINE, 1, ((void*)0), 1,
     arena_get(TSDN_NULL, 0, 1));
 if (tcache == ((void*)0)) {
  return ((void*)0);
 }

 tcache_init(tsd, tcache,
     (void *)((uintptr_t)tcache + (uintptr_t)stack_offset));
 tcache_arena_associate(tsd_tsdn(tsd), tcache, arena_ichoose(tsd, ((void*)0)));

 return tcache;
}
