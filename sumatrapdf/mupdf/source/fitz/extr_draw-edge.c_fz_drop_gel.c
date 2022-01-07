
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_rasterizer ;
struct TYPE_3__ {struct TYPE_3__* deltas; struct TYPE_3__* alphas; struct TYPE_3__* edges; struct TYPE_3__* active; } ;
typedef TYPE_1__ fz_gel ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
fz_drop_gel(fz_context *ctx, fz_rasterizer *rast)
{
 fz_gel *gel = (fz_gel *)rast;
 if (gel == ((void*)0))
  return;
 fz_free(ctx, gel->active);
 fz_free(ctx, gel->edges);
 fz_free(ctx, gel->alphas);
 fz_free(ctx, gel->deltas);
 fz_free(ctx, gel);
}
