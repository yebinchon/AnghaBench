
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_annot ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_printf (int *,int *,char*,float,...) ;
 int pdf_annot_color (int *,int *,int*,float*) ;

__attribute__((used)) static int pdf_write_fill_color_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf)
{
 float color[4];
 int n;
 pdf_annot_color(ctx, annot, &n, color);
 switch (n)
 {
 default: return 0;
 case 1: fz_append_printf(ctx, buf, "%g g\n", color[0]); break;
 case 3: fz_append_printf(ctx, buf, "%g %g %g rg\n", color[0], color[1], color[2]); break;
 case 4: fz_append_printf(ctx, buf, "%g %g %g %g k\n", color[0], color[1], color[2], color[3]); break;
 }
 return 1;
}
