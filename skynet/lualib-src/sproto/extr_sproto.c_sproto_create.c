
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int dummy; } ;
struct sproto {struct pool memory; } ;


 int * create_from_bundle (struct sproto*,void const*,size_t) ;
 int memset (struct sproto*,int ,int) ;
 struct sproto* pool_alloc (struct pool*,int) ;
 int pool_init (struct pool*) ;
 int pool_release (struct pool*) ;

struct sproto *
sproto_create(const void * proto, size_t sz) {
 struct pool mem;
 struct sproto * s;
 pool_init(&mem);
 s = pool_alloc(&mem, sizeof(*s));
 if (s == ((void*)0))
  return ((void*)0);
 memset(s, 0, sizeof(*s));
 s->memory = mem;
 if (create_from_bundle(s, proto, sz) == ((void*)0)) {
  pool_release(&s->memory);
  return ((void*)0);
 }
 return s;
}
