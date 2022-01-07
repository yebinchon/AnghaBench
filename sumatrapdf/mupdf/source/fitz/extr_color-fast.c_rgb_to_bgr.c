
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;



__attribute__((used)) static void rgb_to_bgr(fz_context *ctx, fz_color_converter *cc, const float *rgb, float *bgr)
{
 bgr[0] = rgb[2];
 bgr[1] = rgb[1];
 bgr[2] = rgb[0];
}
