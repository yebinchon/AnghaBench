
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;



__attribute__((used)) static void gray_to_rgb(fz_context *ctx, fz_color_converter *cc, const float *gray, float *rgb)
{
 rgb[0] = gray[0];
 rgb[1] = gray[0];
 rgb[2] = gray[0];
}
