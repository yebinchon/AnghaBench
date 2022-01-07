
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PREFIX_SIZE ;
 int fill_prefix (void*) ;
 int je_posix_memalign (void**,size_t,scalar_t__) ;
 int malloc_oom (size_t) ;

int
skynet_posix_memalign(void **memptr, size_t alignment, size_t size) {
 int err = je_posix_memalign(memptr, alignment, size + PREFIX_SIZE);
 if (err) malloc_oom(size);
 fill_prefix(*memptr);
 return err;
}
