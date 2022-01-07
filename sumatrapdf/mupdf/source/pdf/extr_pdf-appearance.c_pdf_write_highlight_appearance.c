
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_11__ {int obj; TYPE_1__* page; } ;
typedef TYPE_2__ pdf_annot ;
typedef int fz_rect ;
struct TYPE_12__ {float x; float y; } ;
typedef TYPE_3__ fz_point ;
typedef int fz_context ;
typedef int fz_buffer ;
struct TYPE_10__ {int doc; } ;


 int BM ;
 int ExtGState ;
 int H ;
 size_t LL ;
 size_t LR ;
 int Multiply ;
 int PDF_NAME (int ) ;
 int QuadPoints ;
 int Type ;
 size_t UL ;
 size_t UR ;
 int ca ;
 float extract_quad (int *,TYPE_3__*,int *,int) ;
 int fz_append_printf (int *,int *,char*,...) ;
 int fz_empty_rect ;
 TYPE_3__ fz_make_point (float,float) ;
 float pdf_annot_opacity (int *,TYPE_2__*) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_dict_put (int *,int *,int ,int ) ;
 int * pdf_dict_put_dict (int *,int *,int ,int) ;
 int pdf_dict_put_real (int *,int *,int ,float) ;
 int * pdf_new_dict (int *,int ,int) ;
 int pdf_write_fill_color_appearance (int *,TYPE_2__*,int *) ;
 float sqrtf (float) ;
 int union_quad (int *,TYPE_3__*,float) ;

__attribute__((used)) static void
pdf_write_highlight_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect, pdf_obj **res)
{
 pdf_obj *res_egs, *res_egs_h;
 pdf_obj *qp;
 fz_point quad[4], mquad[4], v;
 float opacity, h, m, dx, dy, vn;
 int i, n;

 *rect = fz_empty_rect;


 *res = pdf_new_dict(ctx, annot->page->doc, 1);
 res_egs = pdf_dict_put_dict(ctx, *res, PDF_NAME(ExtGState), 1);
 res_egs_h = pdf_dict_put_dict(ctx, res_egs, PDF_NAME(H), 2);
 pdf_dict_put(ctx, res_egs_h, PDF_NAME(Type), PDF_NAME(ExtGState));
 pdf_dict_put(ctx, res_egs_h, PDF_NAME(BM), PDF_NAME(Multiply));
 opacity = pdf_annot_opacity(ctx, annot);
 if (opacity < 1)
  pdf_dict_put_real(ctx, res_egs_h, PDF_NAME(ca), opacity);

 pdf_write_fill_color_appearance(ctx, annot, buf);

 fz_append_printf(ctx, buf, "/H gs\n");

 qp = pdf_dict_get(ctx, annot->obj, PDF_NAME(QuadPoints));
 n = pdf_array_len(ctx, qp);
 if (n > 0)
 {
  for (i = 0; i < n; i += 8)
  {
   h = extract_quad(ctx, quad, qp, i);
   m = h / 4.2425f;
   dx = quad[LR].x - quad[LL].x;
   dy = quad[LR].y - quad[LL].y;
   vn = sqrtf(dx * dx + dy * dy);
   v = fz_make_point(dx * m / vn, dy * m / vn);

   mquad[LL].x = quad[LL].x - v.x - v.y;
   mquad[LL].y = quad[LL].y - v.y + v.x;
   mquad[UL].x = quad[UL].x - v.x + v.y;
   mquad[UL].y = quad[UL].y - v.y - v.x;
   mquad[LR].x = quad[LR].x + v.x - v.y;
   mquad[LR].y = quad[LR].y + v.y + v.x;
   mquad[UR].x = quad[UR].x + v.x + v.y;
   mquad[UR].y = quad[UR].y + v.y - v.x;

   fz_append_printf(ctx, buf, "%g %g m\n", quad[LL].x, quad[LL].y);
   fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n",
    mquad[LL].x, mquad[LL].y,
    mquad[UL].x, mquad[UL].y,
    quad[UL].x, quad[UL].y);
   fz_append_printf(ctx, buf, "%g %g l\n", quad[UR].x, quad[UR].y);
   fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n",
    mquad[UR].x, mquad[UR].y,
    mquad[LR].x, mquad[LR].y,
    quad[LR].x, quad[LR].y);
   fz_append_printf(ctx, buf, "f\n");

   union_quad(rect, quad, h/16);
   union_quad(rect, mquad, 0);
  }
 }
}
