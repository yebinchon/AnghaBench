
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PREFIX_SIZE ;
 void* fill_prefix (void*) ;
 void* je_calloc (size_t,size_t) ;
 int malloc_oom (size_t) ;

void *
skynet_calloc(size_t nmemb,size_t size) {
 void* ptr = je_calloc(nmemb + ((PREFIX_SIZE+size-1)/size), size );
 if(!ptr) malloc_oom(size);
 return fill_prefix(ptr);
}
