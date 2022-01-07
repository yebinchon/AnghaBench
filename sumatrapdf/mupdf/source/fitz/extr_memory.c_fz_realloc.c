
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_ERROR_MEMORY ;
 void* do_scavenging_realloc (int *,void*,size_t) ;
 int fz_free (int *,void*) ;
 int fz_throw (int *,int ,char*,size_t) ;

void *
fz_realloc(fz_context *ctx, void *p, size_t size)
{
 if (size == 0)
 {
  fz_free(ctx, p);
  return ((void*)0);
 }
 p = do_scavenging_realloc(ctx, p, size);
 if (!p)
  fz_throw(ctx, FZ_ERROR_MEMORY, "realloc (%zu bytes) failed", size);
 return p;
}
