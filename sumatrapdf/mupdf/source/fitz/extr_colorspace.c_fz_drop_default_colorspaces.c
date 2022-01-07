
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int oi; int cmyk; int rgb; int gray; int refs; } ;
typedef TYPE_1__ fz_default_colorspaces ;
typedef int fz_context ;


 int fz_drop_colorspace (int *,int ) ;
 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_default_colorspaces(fz_context *ctx, fz_default_colorspaces *default_cs)
{
 if (fz_drop_imp(ctx, default_cs, &default_cs->refs))
 {
  fz_drop_colorspace(ctx, default_cs->gray);
  fz_drop_colorspace(ctx, default_cs->rgb);
  fz_drop_colorspace(ctx, default_cs->cmyk);
  fz_drop_colorspace(ctx, default_cs->oi);
  fz_free(ctx, default_cs);
 }
}
