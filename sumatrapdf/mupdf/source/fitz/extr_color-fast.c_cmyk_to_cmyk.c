
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;



__attribute__((used)) static void cmyk_to_cmyk(fz_context *ctx, fz_color_converter *cc, const float *cmyk, float *xyz)
{
 xyz[0] = cmyk[0];
 xyz[1] = cmyk[1];
 xyz[2] = cmyk[2];
 xyz[3] = cmyk[3];
}
