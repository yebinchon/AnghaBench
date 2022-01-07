
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {size_t current_used; int * header; int * current; } ;


 size_t CHUNK_SIZE ;
 void* pool_newchunk (struct pool*,size_t) ;

__attribute__((used)) static void *
pool_alloc(struct pool *p, size_t sz) {

 sz = (sz + 7) & ~7;
 if (sz >= CHUNK_SIZE) {
  return pool_newchunk(p, sz);
 }
 if (p->current == ((void*)0)) {
  if (pool_newchunk(p, CHUNK_SIZE) == ((void*)0))
   return ((void*)0);
  p->current = p->header;
 }
 if (sz + p->current_used <= CHUNK_SIZE) {
  void * ret = (char *)(p->current+1) + p->current_used;
  p->current_used += sz;
  return ret;
 }

 if (sz >= p->current_used) {
  return pool_newchunk(p, sz);
 } else {
  void * ret = pool_newchunk(p, CHUNK_SIZE);
  p->current = p->header;
  p->current_used = sz;
  return ret;
 }
}
