
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_annot ;
typedef int fz_context ;


 int fz_min (float,int) ;
 int pdf_annot_color (int *,int *,int*,float*) ;

__attribute__((used)) static int pdf_is_dark_fill_color(fz_context *ctx, pdf_annot *annot)
{
 float color[4], gray;
 int n;
 pdf_annot_color(ctx, annot, &n, color);
 switch (n)
 {
 default:
  gray = 1;
  break;
 case 1:
  gray = color[0];
  break;
 case 3:
  gray = color[0] * 0.3f + color[1] * 0.59f + color[2] * 0.11f;
  break;
 case 4:
  gray = color[0] * 0.3f + color[1] * 0.59f + color[2] * 0.11f + color[3];
  gray = 1 - fz_min(gray, 1);
  break;
 }
 return gray < 0.25f;
}
