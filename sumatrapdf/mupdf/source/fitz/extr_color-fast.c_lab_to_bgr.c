
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;


 int lab_to_rgb (int *,int *,float const*,float*) ;
 int rgb_to_bgr (int *,int *,float*,float*) ;

__attribute__((used)) static void lab_to_bgr(fz_context *ctx, fz_color_converter *cc, const float *lab, float *bgr)
{
 float rgb[3];
 lab_to_rgb(ctx, cc, lab, rgb);
 rgb_to_bgr(ctx, cc, rgb, bgr);
}
