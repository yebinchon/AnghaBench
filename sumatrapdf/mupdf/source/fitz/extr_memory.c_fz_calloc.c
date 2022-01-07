
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_ERROR_MEMORY ;
 size_t SIZE_MAX ;
 void* do_scavenging_malloc (int *,size_t) ;
 int fz_throw (int *,int ,char*,size_t,size_t) ;
 int memset (void*,int ,size_t) ;

void *
fz_calloc(fz_context *ctx, size_t count, size_t size)
{
 void *p;
 if (count == 0 || size == 0)
  return ((void*)0);
 if (count > SIZE_MAX / size)
  fz_throw(ctx, FZ_ERROR_MEMORY, "calloc (%zu x %zu bytes) failed (size_t overflow)", count, size);
 p = do_scavenging_malloc(ctx, count * size);
 if (!p)
  fz_throw(ctx, FZ_ERROR_MEMORY, "calloc (%zu x %zu bytes) failed", count, size);
 memset(p, 0, count*size);
 return p;
}
