
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_annot ;
struct TYPE_3__ {int y1; int x1; int y0; int x0; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_context ;
typedef int fz_buffer ;


 int draw_circle_in_box (int *,int *,float,int ,int ,int ,int ) ;
 int maybe_stroke_and_fill (int *,int *,int,int) ;
 float pdf_write_border_appearance (int *,int *,int *) ;
 int pdf_write_interior_fill_color_appearance (int *,int *,int *) ;
 int pdf_write_stroke_color_appearance (int *,int *,int *) ;

__attribute__((used)) static void
pdf_write_circle_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect)
{
 float lw;
 int sc;
 int ic;

 lw = pdf_write_border_appearance(ctx, annot, buf);
 sc = pdf_write_stroke_color_appearance(ctx, annot, buf);
 ic = pdf_write_interior_fill_color_appearance(ctx, annot, buf);

 draw_circle_in_box(ctx, buf, lw, rect->x0, rect->y0, rect->x1, rect->y1);
 maybe_stroke_and_fill(ctx, buf, sc, ic);
}
