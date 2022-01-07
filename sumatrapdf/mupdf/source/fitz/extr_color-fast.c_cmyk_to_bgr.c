
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;


 int fz_min (float const,int) ;

__attribute__((used)) static void cmyk_to_bgr(fz_context *ctx, fz_color_converter *cc, const float *cmyk, float *bgr)
{
 bgr[0] = 1 - fz_min(cmyk[2] + cmyk[3], 1);
 bgr[1] = 1 - fz_min(cmyk[1] + cmyk[3], 1);
 bgr[2] = 1 - fz_min(cmyk[0] + cmyk[3], 1);
}
