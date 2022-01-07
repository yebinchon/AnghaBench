
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 void* do_scavenging_malloc (int *,size_t) ;

void *
fz_malloc_no_throw(fz_context *ctx, size_t size)
{
 if (size == 0)
  return ((void*)0);
 return do_scavenging_malloc(ctx, size);
}
