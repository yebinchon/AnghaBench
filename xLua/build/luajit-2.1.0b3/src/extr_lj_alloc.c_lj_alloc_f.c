
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* lj_alloc_free (void*,void*) ;
 void* lj_alloc_malloc (void*,size_t) ;
 void* lj_alloc_realloc (void*,void*,size_t) ;

void *lj_alloc_f(void *msp, void *ptr, size_t osize, size_t nsize)
{
  (void)osize;
  if (nsize == 0) {
    return lj_alloc_free(msp, ptr);
  } else if (ptr == ((void*)0)) {
    return lj_alloc_malloc(msp, nsize);
  } else {
    return lj_alloc_realloc(msp, ptr, nsize);
  }
}
