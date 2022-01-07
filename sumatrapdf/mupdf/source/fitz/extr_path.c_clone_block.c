
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 void* fz_malloc (int *,size_t) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static void *
clone_block(fz_context *ctx, void *block, size_t len)
{
 void *target;

 if (len == 0 || block == ((void*)0))
  return ((void*)0);

 target = fz_malloc(ctx, len);
 memcpy(target, block, len);
 return target;
}
