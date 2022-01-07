
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;



__attribute__((used)) static void bgr_to_gray(fz_context *ctx, fz_color_converter *cc, const float *bgr, float *gray)
{
 gray[0] = bgr[0] * 0.11f + bgr[1] * 0.59f + bgr[2] * 0.3f;
}
