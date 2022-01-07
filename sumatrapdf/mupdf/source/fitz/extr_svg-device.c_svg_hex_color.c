
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_clampi (int,int ,int) ;
 int fz_convert_color (int *,int *,float const*,int *,float*,int *,int ) ;
 int * fz_device_rgb (int *) ;

__attribute__((used)) static unsigned int
svg_hex_color(fz_context *ctx, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
 float rgb[3];
 int r, g, b;

 if (colorspace != fz_device_rgb(ctx))
 {
  fz_convert_color(ctx, colorspace, color, fz_device_rgb(ctx), rgb, ((void*)0), color_params);
  color = rgb;
 }

 r = fz_clampi(255 * color[0] + 0.5f, 0, 255);
 g = fz_clampi(255 * color[1] + 0.5f, 0, 255);
 b = fz_clampi(255 * color[2] + 0.5f, 0, 255);

 return (r << 16) | (g << 8) | b;
}
