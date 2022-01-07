
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PREFIX_SIZE ;
 void* clean_prefix (void*) ;
 void* fill_prefix (void*) ;
 void* je_realloc (void*,scalar_t__) ;
 int malloc_oom (size_t) ;
 void* skynet_malloc (size_t) ;

void *
skynet_realloc(void *ptr, size_t size) {
 if (ptr == ((void*)0)) return skynet_malloc(size);

 void* rawptr = clean_prefix(ptr);
 void *newptr = je_realloc(rawptr, size+PREFIX_SIZE);
 if(!newptr) malloc_oom(size);
 return fill_prefix(newptr);
}
