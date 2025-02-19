
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_rect ;
struct TYPE_5__ {float member_0; float member_1; float x; float y; } ;
typedef TYPE_1__ fz_point ;
typedef int fz_context ;
typedef int fz_buffer ;


 int Butt ;
 float CIRCLE_MAGIC ;
 int Circle ;
 int ClosedArrow ;
 int Diamond ;
 int FZ_PI ;
 int OpenArrow ;
 int * PDF_NAME (int ) ;
 int RClosedArrow ;
 int ROpenArrow ;
 int Slash ;
 int Square ;
 int atan2f (float,float) ;
 int fz_append_printf (int *,int *,char*,float,float,...) ;
 int fz_include_point_in_rect (int ,TYPE_1__) ;
 TYPE_1__ fz_make_point (float,float) ;
 float fz_max (int,float) ;
 int include_cap (int *,float,float,float) ;
 int maybe_stroke (int *,int *,int) ;
 int maybe_stroke_and_fill (int *,int *,int,int) ;
 int pdf_write_arrow_appearance (int *,int *,int *,float,float,float,float,float) ;
 TYPE_1__ rotate_vector (float,int ,float) ;

__attribute__((used)) static void
pdf_write_line_cap_appearance(fz_context *ctx, fz_buffer *buf, fz_rect *rect,
  float x, float y, float dx, float dy, float w,
  int sc, int ic, pdf_obj *cap)
{
 if (cap == PDF_NAME(Square))
 {
  float r = fz_max(2.5f, w * 2.5f);
  fz_append_printf(ctx, buf, "%g %g %g %g re\n", x-r, y-r, r*2, r*2);
  maybe_stroke_and_fill(ctx, buf, sc, ic);
  include_cap(rect, x, y, r);
 }
 else if (cap == PDF_NAME(Circle))
 {
  float r = fz_max(2.5f, w * 2.5f);
  float m = r * CIRCLE_MAGIC;
  fz_append_printf(ctx, buf, "%g %g m\n", x, y+r);
  fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", x+m, y+r, x+r, y+m, x+r, y);
  fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", x+r, y-m, x+m, y-r, x, y-r);
  fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", x-m, y-r, x-r, y-m, x-r, y);
  fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", x-r, y+m, x-m, y+r, x, y+r);
  maybe_stroke_and_fill(ctx, buf, sc, ic);
  include_cap(rect, x, y, r);
 }
 else if (cap == PDF_NAME(Diamond))
 {
  float r = fz_max(2.5f, w * 2.5f);
  fz_append_printf(ctx, buf, "%g %g m\n", x, y+r);
  fz_append_printf(ctx, buf, "%g %g l\n", x+r, y);
  fz_append_printf(ctx, buf, "%g %g l\n", x, y-r);
  fz_append_printf(ctx, buf, "%g %g l\n", x-r, y);
  maybe_stroke_and_fill(ctx, buf, sc, ic);
  include_cap(rect, x, y, r);
 }
 else if (cap == PDF_NAME(OpenArrow))
 {
  pdf_write_arrow_appearance(ctx, buf, rect, x, y, dx, dy, w);
  maybe_stroke(ctx, buf, sc);
 }
 else if (cap == PDF_NAME(ClosedArrow))
 {
  pdf_write_arrow_appearance(ctx, buf, rect, x, y, dx, dy, w);
  maybe_stroke_and_fill(ctx, buf, sc, ic);
 }

 else if (cap == PDF_NAME(Butt))
 {
  float r = fz_max(3, w * 3);
  fz_point a = { x-dy*r, y+dx*r };
  fz_point b = { x+dy*r, y-dx*r };
  fz_append_printf(ctx, buf, "%g %g m\n", a.x, a.y);
  fz_append_printf(ctx, buf, "%g %g l\n", b.x, b.y);
  maybe_stroke(ctx, buf, sc);
  *rect = fz_include_point_in_rect(*rect, a);
  *rect = fz_include_point_in_rect(*rect, b);
 }
 else if (cap == PDF_NAME(ROpenArrow))
 {
  pdf_write_arrow_appearance(ctx, buf, rect, x, y, -dx, -dy, w);
  maybe_stroke(ctx, buf, sc);
 }
 else if (cap == PDF_NAME(RClosedArrow))
 {
  pdf_write_arrow_appearance(ctx, buf, rect, x, y, -dx, -dy, w);
  maybe_stroke_and_fill(ctx, buf, sc, ic);
 }

 else if (cap == PDF_NAME(Slash))
 {
  float r = fz_max(5, w * 5);
  float angle = atan2f(dy, dx) - (30 * FZ_PI / 180);
  fz_point a, b, v;
  v = rotate_vector(angle, 0, r);
  a = fz_make_point(x + v.x, y + v.y);
  v = rotate_vector(angle, 0, -r);
  b = fz_make_point(x + v.x, y + v.y);
  fz_append_printf(ctx, buf, "%g %g m\n", a.x, a.y);
  fz_append_printf(ctx, buf, "%g %g l\n", b.x, b.y);
  maybe_stroke(ctx, buf, sc);
  *rect = fz_include_point_in_rect(*rect, a);
  *rect = fz_include_point_in_rect(*rect, b);
 }
}
