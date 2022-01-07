
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* weights; } ;
typedef TYPE_1__ fz_scale_cache ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_scale_cache(fz_context *ctx, fz_scale_cache *sc)
{
 if (!sc)
  return;
 fz_free(ctx, sc->weights);
 fz_free(ctx, sc);
}
