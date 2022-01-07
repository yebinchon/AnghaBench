
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;



__attribute__((used)) static void rgb_to_gray(fz_context *ctx, fz_color_converter *cc, const float *rgb, float *gray)
{
 gray[0] = rgb[0] * 0.3f + rgb[1] * 0.59f + rgb[2] * 0.11f;
}
