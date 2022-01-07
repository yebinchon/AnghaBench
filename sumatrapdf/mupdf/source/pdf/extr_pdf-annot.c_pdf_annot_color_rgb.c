
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int fz_min (int,float) ;
 int pdf_annot_color_imp (int *,int *,int*,float*) ;

__attribute__((used)) static int pdf_annot_color_rgb(fz_context *ctx, pdf_obj *arr, float rgb[3])
{
 float color[4];
 int n;
 pdf_annot_color_imp(ctx, arr, &n, color);
 if (n == 0)
 {
  return 0;
 }
 else if (n == 1)
 {
  rgb[0] = rgb[1] = rgb[2] = color[0];
 }
 else if (n == 3)
 {
  rgb[0] = color[0];
  rgb[1] = color[1];
  rgb[2] = color[2];
 }
 else if (n == 4)
 {
  rgb[0] = 1 - fz_min(1, color[0] + color[3]);
  rgb[1] = 1 - fz_min(1, color[1] + color[3]);
  rgb[2] = 1 - fz_min(1, color[2] + color[3]);
 }
 return 1;
}
