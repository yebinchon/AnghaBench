
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cmyk; } ;
typedef TYPE_1__ fz_default_colorspaces ;
typedef int fz_context ;
struct TYPE_7__ {scalar_t__ type; int n; } ;
typedef TYPE_2__ fz_colorspace ;


 scalar_t__ FZ_COLORSPACE_CMYK ;
 int fz_drop_colorspace (int *,int ) ;
 int fz_keep_colorspace (int *,TYPE_2__*) ;

void fz_set_default_cmyk(fz_context *ctx, fz_default_colorspaces *default_cs, fz_colorspace *cs)
{
 if (cs->type == FZ_COLORSPACE_CMYK && cs->n == 4)
 {
  fz_drop_colorspace(ctx, default_cs->cmyk);
  default_cs->cmyk = fz_keep_colorspace(ctx, cs);
 }
}
