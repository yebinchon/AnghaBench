
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_free (void*) ;
 void* raw_realloc (void*,size_t) ;

void *
skynet_lalloc(void *ptr, size_t osize, size_t nsize) {
 if (nsize == 0) {
  raw_free(ptr);
  return ((void*)0);
 } else {
  return raw_realloc(ptr, nsize);
 }
}
