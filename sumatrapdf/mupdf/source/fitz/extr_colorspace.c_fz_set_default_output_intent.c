
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int cmyk; int * oi; int rgb; int gray; } ;
typedef TYPE_1__ fz_default_colorspaces ;
typedef int fz_context ;
struct TYPE_13__ {int type; int name; } ;
typedef TYPE_2__ fz_colorspace ;





 int fz_device_cmyk (int *) ;
 int fz_device_gray (int *) ;
 int fz_device_rgb (int *) ;
 int fz_drop_colorspace (int *,int *) ;
 void* fz_keep_colorspace (int *,TYPE_2__*) ;
 int fz_set_default_cmyk (int *,TYPE_1__*,TYPE_2__*) ;
 int fz_set_default_gray (int *,TYPE_1__*,TYPE_2__*) ;
 int fz_set_default_rgb (int *,TYPE_1__*,TYPE_2__*) ;
 int fz_warn (int *,char*,int ) ;

void fz_set_default_output_intent(fz_context *ctx, fz_default_colorspaces *default_cs, fz_colorspace *cs)
{
 fz_drop_colorspace(ctx, default_cs->oi);
 default_cs->oi = ((void*)0);


 switch (cs->type)
 {
 default:
  fz_warn(ctx, "Ignoring incompatible output intent: %s.", cs->name);
  break;
 case 129:
  default_cs->oi = fz_keep_colorspace(ctx, cs);
  if (default_cs->gray == fz_device_gray(ctx))
   fz_set_default_gray(ctx, default_cs, cs);
  break;
 case 128:
  default_cs->oi = fz_keep_colorspace(ctx, cs);
  if (default_cs->rgb == fz_device_rgb(ctx))
   fz_set_default_rgb(ctx, default_cs, cs);
  break;
 case 130:
  default_cs->oi = fz_keep_colorspace(ctx, cs);
  if (default_cs->cmyk == fz_device_cmyk(ctx))
   fz_set_default_cmyk(ctx, default_cs, cs);
  break;
 }
}
