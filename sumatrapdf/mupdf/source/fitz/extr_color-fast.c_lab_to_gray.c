
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;



__attribute__((used)) static void lab_to_gray(fz_context *ctx, fz_color_converter *cc, const float *lab, float *gray)
{
 gray[0] = lab[0] / 100;
}
