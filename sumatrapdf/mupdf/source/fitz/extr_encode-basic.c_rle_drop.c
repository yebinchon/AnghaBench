
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rle {int dummy; } ;
typedef int fz_context ;


 int fz_free (int *,struct rle*) ;

__attribute__((used)) static void rle_drop(fz_context *ctx, void *opaque)
{
 struct rle *enc = opaque;
 fz_free(ctx, enc);
}
