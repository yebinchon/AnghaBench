
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* fz_malloc_no_throw (void*,unsigned int) ;

void *fz_zlib_alloc(void *ctx, unsigned int items, unsigned int size)
{
 return fz_malloc_no_throw(ctx, items * size);
}
