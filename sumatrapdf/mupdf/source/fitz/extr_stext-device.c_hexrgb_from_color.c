
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_clampi (float,int ,int) ;
 int fz_convert_color (int *,int *,float const*,int ,float*,int *,int ) ;
 int fz_default_color_params ;
 int fz_device_rgb (int *) ;

__attribute__((used)) static int hexrgb_from_color(fz_context *ctx, fz_colorspace *colorspace, const float *color)
{
 float rgb[3];
 fz_convert_color(ctx, colorspace, color, fz_device_rgb(ctx), rgb, ((void*)0), fz_default_color_params);
 return
  (fz_clampi(rgb[0] * 255, 0, 255) << 16) |
  (fz_clampi(rgb[1] * 255, 0, 255) << 8) |
  (fz_clampi(rgb[2] * 255, 0, 255));
}
