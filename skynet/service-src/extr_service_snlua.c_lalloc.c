
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snlua {size_t mem; size_t mem_limit; size_t mem_report; int ctx; } ;


 int skynet_error (int ,char*,float) ;
 void* skynet_lalloc (void*,size_t,size_t) ;

__attribute__((used)) static void *
lalloc(void * ud, void *ptr, size_t osize, size_t nsize) {
 struct snlua *l = ud;
 size_t mem = l->mem;
 l->mem += nsize;
 if (ptr)
  l->mem -= osize;
 if (l->mem_limit != 0 && l->mem > l->mem_limit) {
  if (ptr == ((void*)0) || nsize > osize) {
   l->mem = mem;
   return ((void*)0);
  }
 }
 if (l->mem > l->mem_report) {
  l->mem_report *= 2;
  skynet_error(l->ctx, "Memory warning %.2f M", (float)l->mem / (1024 * 1024));
 }
 return skynet_lalloc(ptr, osize, nsize);
}
