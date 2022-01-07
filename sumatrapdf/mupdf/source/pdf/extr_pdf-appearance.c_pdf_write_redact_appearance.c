
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_10__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_11__ {scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; } ;
typedef TYPE_2__ fz_rect ;
struct TYPE_12__ {int y; int x; } ;
typedef TYPE_3__ fz_point ;
typedef int fz_context ;
typedef int fz_buffer ;


 size_t LL ;
 size_t LR ;
 int PDF_NAME (int ) ;
 int QuadPoints ;
 size_t UL ;
 size_t UR ;
 int extract_quad (int *,TYPE_3__*,int *,int) ;
 int fz_append_printf (int *,int *,char*,...) ;
 TYPE_2__ fz_empty_rect ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int union_quad (TYPE_2__*,TYPE_3__*,int) ;

__attribute__((used)) static void
pdf_write_redact_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect)
{
 fz_point quad[4];
 pdf_obj *qp;
 int i, n;

 fz_append_printf(ctx, buf, "1 0 0 RG\n");

 qp = pdf_dict_get(ctx, annot->obj, PDF_NAME(QuadPoints));
 n = pdf_array_len(ctx, qp);
 if (n > 0)
 {
  *rect = fz_empty_rect;
  for (i = 0; i < n; i += 8)
  {
   extract_quad(ctx, quad, qp, i);
   fz_append_printf(ctx, buf, "%g %g m\n", quad[LL].x, quad[LL].y);
   fz_append_printf(ctx, buf, "%g %g l\n", quad[LR].x, quad[LR].y);
   fz_append_printf(ctx, buf, "%g %g l\n", quad[UR].x, quad[UR].y);
   fz_append_printf(ctx, buf, "%g %g l\n", quad[UL].x, quad[UL].y);
   fz_append_printf(ctx, buf, "s\n");
   union_quad(rect, quad, 1);
  }
 }
 else
 {
  fz_append_printf(ctx, buf, "%g %g m\n", rect->x0+1, rect->y0+1);
  fz_append_printf(ctx, buf, "%g %g l\n", rect->x1-1, rect->y0+1);
  fz_append_printf(ctx, buf, "%g %g l\n", rect->x1-1, rect->y1-1);
  fz_append_printf(ctx, buf, "%g %g l\n", rect->x0+1, rect->y1-1);
  fz_append_printf(ctx, buf, "s\n");
 }
}
