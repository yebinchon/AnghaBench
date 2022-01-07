
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 void* do_scavenging_realloc (int *,void*,size_t) ;
 int fz_free (int *,void*) ;

void *
fz_realloc_no_throw(fz_context *ctx, void *p, size_t size)
{
 if (size == 0)
 {
  fz_free(ctx, p);
  return ((void*)0);
 }
 return do_scavenging_realloc(ctx, p, size);
}
