
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * out; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_write_printf (int *,int *,char*,...) ;
 int svg_hex_color (int *,int *,float const*,int ) ;

__attribute__((used)) static void
svg_dev_fill_color(fz_context *ctx, svg_device *sdev, fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 fz_output *out = sdev->out;
 if (colorspace)
 {
  int rgb = svg_hex_color(ctx, colorspace, color, color_params);
  if (rgb != 0)
   fz_write_printf(ctx, out, " fill=\"#%06x\"", rgb);
 }
 else
  fz_write_printf(ctx, out, " fill=\"none\"");
 if (alpha != 1)
  fz_write_printf(ctx, out, " fill-opacity=\"%g\"", alpha);
}
