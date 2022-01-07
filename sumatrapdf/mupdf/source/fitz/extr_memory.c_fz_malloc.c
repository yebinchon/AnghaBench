
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_ERROR_MEMORY ;
 void* do_scavenging_malloc (int *,size_t) ;
 int fz_throw (int *,int ,char*,size_t) ;

void *
fz_malloc(fz_context *ctx, size_t size)
{
 void *p;
 if (size == 0)
  return ((void*)0);
 p = do_scavenging_malloc(ctx, size);
 if (!p)
  fz_throw(ctx, FZ_ERROR_MEMORY, "malloc of %zu bytes failed", size);
 return p;
}
