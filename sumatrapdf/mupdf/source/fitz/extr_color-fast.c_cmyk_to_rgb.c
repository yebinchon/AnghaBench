
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;


 int fz_min (int,float const) ;

__attribute__((used)) static void cmyk_to_rgb(fz_context *ctx, fz_color_converter *cc, const float *cmyk, float *rgb)
{
 rgb[0] = 1 - fz_min(1, cmyk[0] + cmyk[3]);
 rgb[1] = 1 - fz_min(1, cmyk[1] + cmyk[3]);
 rgb[2] = 1 - fz_min(1, cmyk[2] + cmyk[3]);
}
