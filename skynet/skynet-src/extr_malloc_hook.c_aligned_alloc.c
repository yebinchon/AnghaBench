
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PREFIX_SIZE ;
 void* fill_prefix (void*) ;
 void* je_aligned_alloc (size_t,size_t) ;
 int malloc_oom (size_t) ;

void *
skynet_aligned_alloc(size_t alignment, size_t size) {
 void* ptr = je_aligned_alloc(alignment, size + (size_t)((PREFIX_SIZE + alignment -1) & ~(alignment-1)));
 if(!ptr) malloc_oom(size);
 return fill_prefix(ptr);
}
