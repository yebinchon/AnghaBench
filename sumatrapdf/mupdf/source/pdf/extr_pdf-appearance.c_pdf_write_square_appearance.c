
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_annot ;
struct TYPE_3__ {float x0; float y0; float x1; float y1; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_printf (int *,int *,char*,float,float,float,float) ;
 int maybe_stroke_and_fill (int *,int *,int,int) ;
 float pdf_write_border_appearance (int *,int *,int *) ;
 int pdf_write_interior_fill_color_appearance (int *,int *,int *) ;
 int pdf_write_stroke_color_appearance (int *,int *,int *) ;

__attribute__((used)) static void
pdf_write_square_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect)
{
 float x, y, w, h;
 float lw;
 int sc;
 int ic;

 lw = pdf_write_border_appearance(ctx, annot, buf);
 sc = pdf_write_stroke_color_appearance(ctx, annot, buf);
 ic = pdf_write_interior_fill_color_appearance(ctx, annot, buf);

 x = rect->x0 + lw;
 y = rect->y0 + lw;
 w = rect->x1 - x - lw;
 h = rect->y1 - y - lw;

 fz_append_printf(ctx, buf, "%g %g %g %g re\n", x, y, w, h);
 maybe_stroke_and_fill(ctx, buf, sc, ic);
}
