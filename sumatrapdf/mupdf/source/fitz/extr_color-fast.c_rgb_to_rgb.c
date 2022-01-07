
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;



__attribute__((used)) static void rgb_to_rgb(fz_context *ctx, fz_color_converter *cc, const float *rgb, float *xyz)
{
 xyz[0] = rgb[0];
 xyz[1] = rgb[1];
 xyz[2] = rgb[2];
}
