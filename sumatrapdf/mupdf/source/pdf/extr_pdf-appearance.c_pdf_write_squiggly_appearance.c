
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_11__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_rect ;
struct TYPE_12__ {int x; int y; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_context ;
typedef int fz_buffer ;


 size_t LL ;
 size_t LR ;
 int PDF_NAME (int ) ;
 int QuadPoints ;
 size_t UL ;
 size_t UR ;
 float extract_quad (int *,TYPE_2__*,int *,int) ;
 int fz_append_printf (int *,int *,char*,...) ;
 int fz_empty_rect ;
 TYPE_2__ fz_make_point (int,int) ;
 TYPE_2__ lerp_point (TYPE_2__,TYPE_2__,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_write_stroke_color_appearance (int *,TYPE_1__*,int *) ;
 float sqrtf (int) ;
 int union_quad (int *,TYPE_2__*,float) ;

__attribute__((used)) static void
pdf_write_squiggly_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect)
{
 fz_point quad[4], a, b, c, v;
 float h, x, w;
 pdf_obj *qp;
 int i, n;

 *rect = fz_empty_rect;

 pdf_write_stroke_color_appearance(ctx, annot, buf);

 qp = pdf_dict_get(ctx, annot->obj, PDF_NAME(QuadPoints));
 n = pdf_array_len(ctx, qp);
 if (n > 0)
 {
  for (i = 0; i < n; i += 8)
  {
   int up = 1;
   h = extract_quad(ctx, quad, qp, i);
   v = fz_make_point(quad[LR].x - quad[LL].x, quad[LR].y - quad[LL].y);
   w = sqrtf(v.x * v.x + v.y * v.y);
   x = 0;

   fz_append_printf(ctx, buf, "%g w\n", h/16);
   fz_append_printf(ctx, buf, "%g %g m\n", quad[LL].x, quad[LL].y);
   while (x < w)
   {
    x += h/7;
    a = lerp_point(quad[LL], quad[LR], x/w);
    if (up)
    {
     b = lerp_point(quad[UL], quad[UR], x/w);
     c = lerp_point(a, b, 1/7.0f);
     fz_append_printf(ctx, buf, "%g %g l\n", c.x, c.y);
    }
    else
     fz_append_printf(ctx, buf, "%g %g l\n", a.x, a.y);
    up = !up;
   }
   fz_append_printf(ctx, buf, "S\n");

   union_quad(rect, quad, h/16);
  }
 }
}
