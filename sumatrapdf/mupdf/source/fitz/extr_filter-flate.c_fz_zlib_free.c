
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_free (void*,void*) ;

void fz_zlib_free(void *ctx, void *ptr)
{
 fz_free(ctx, ptr);
}
