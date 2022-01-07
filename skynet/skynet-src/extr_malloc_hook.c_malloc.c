
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PREFIX_SIZE ;
 void* fill_prefix (void*) ;
 void* je_malloc (scalar_t__) ;
 int malloc_oom (size_t) ;

void *
skynet_malloc(size_t size) {
 void* ptr = je_malloc(size + PREFIX_SIZE);
 if(!ptr) malloc_oom(size);
 return fill_prefix(ptr);
}
