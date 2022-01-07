
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahx {int dummy; } ;
typedef int fz_context ;


 int fz_free (int *,struct ahx*) ;

__attribute__((used)) static void ahx_drop(fz_context *ctx, void *opaque)
{
 struct ahx *state = opaque;
 fz_free(ctx, state);
}
