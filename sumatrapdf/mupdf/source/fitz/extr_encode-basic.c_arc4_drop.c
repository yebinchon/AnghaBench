
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_free (int *,void*) ;

__attribute__((used)) static void arc4_drop(fz_context *ctx, void *opaque)
{
 fz_free(ctx, opaque);
}
