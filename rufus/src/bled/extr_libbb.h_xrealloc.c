
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static inline void *xrealloc(void *ptr, size_t size) {
 void *ret = realloc(ptr, size);
 if (!ret)
  free(ptr);
 return ret;
}
