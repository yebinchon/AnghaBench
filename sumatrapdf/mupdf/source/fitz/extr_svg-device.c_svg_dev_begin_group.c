
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int blend_bitmask; int * out; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_rect ;
typedef int fz_output ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int FZ_BLEND_LUMINOSITY ;
 int FZ_BLEND_NORMAL ;
 int * end_def (int *,TYPE_1__*) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int * start_def (int *,TYPE_1__*) ;

__attribute__((used)) static void
svg_dev_begin_group(fz_context *ctx, fz_device *dev, fz_rect bbox, fz_colorspace *cs, int isolated, int knockout, int blendmode, float alpha)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out = sdev->out;




 static char *blend_names[] = {
  "normal",
  "multiply",
  "screen",
  "overlay",
  "darken",
  "lighten",
  "color_dodge",
  "color_burn",
  "hard_light",
  "soft_light",
  "difference",
  "exclusion",
  "hue",
  "saturation",
  "color",
  "luminosity",
 };

 if (blendmode < FZ_BLEND_NORMAL || blendmode > FZ_BLEND_LUMINOSITY)
  blendmode = FZ_BLEND_NORMAL;
 if (blendmode != FZ_BLEND_NORMAL && (sdev->blend_bitmask & (1<<blendmode)) == 0)
 {
  sdev->blend_bitmask |= (1<<blendmode);
  out = start_def(ctx, sdev);
  fz_write_printf(ctx, out,
    "<filter id=\"blend_%d\"><feBlend mode=\"%s\" in2=\"BackgroundImage\" in=\"SourceGraphic\"/></filter>\n",
    blendmode, blend_names[blendmode]);
  out = end_def(ctx, sdev);
 }


 if (alpha == 1)
  fz_write_printf(ctx, out, "<g");
 else
  fz_write_printf(ctx, out, "<g opacity=\"%g\"", alpha);
 if (blendmode != FZ_BLEND_NORMAL)
  fz_write_printf(ctx, out, " filter=\"url(#blend_%d)\"", blendmode);
 fz_write_printf(ctx, out, ">\n");
}
