
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int fz_convert_color (int ,int ,float*,int ,float*,int *,int ) ;
 int fz_default_color_params ;
 int fz_device_cmyk (int ) ;
 int fz_device_rgb (int ) ;

__attribute__((used)) static unsigned int hex_from_color(int n, float color[4])
{
 float rgb[4];
 int r, g, b;
 switch (n)
 {
 default:
  return 0;
 case 1:
  r = color[0] * 255;
  return 0xff000000 | (r<<16) | (r<<8) | r;
 case 3:
  r = color[0] * 255;
  g = color[1] * 255;
  b = color[2] * 255;
  return 0xff000000 | (r<<16) | (g<<8) | b;
 case 4:
  fz_convert_color(ctx, fz_device_cmyk(ctx), color, fz_device_rgb(ctx), rgb, ((void*)0), fz_default_color_params);
  r = rgb[0] * 255;
  g = rgb[1] * 255;
  b = rgb[2] * 255;
  return 0xff000000 | (r<<16) | (g<<8) | b;
 }
}
