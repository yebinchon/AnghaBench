
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int pdf_page ;
typedef int pdf_obj ;
struct TYPE_17__ {int obj; } ;
typedef TYPE_5__ pdf_annot ;
struct TYPE_18__ {int y1; int x0; int x1; int y0; } ;
typedef TYPE_6__ fz_rect ;
struct TYPE_16__ {int y; int x; } ;
struct TYPE_15__ {int y; int x; } ;
struct TYPE_14__ {int y; int x; } ;
struct TYPE_13__ {int y; int x; } ;
struct TYPE_19__ {TYPE_4__ ul; TYPE_3__ ur; TYPE_2__ lr; TYPE_1__ ll; } ;
typedef TYPE_7__ fz_quad ;
typedef int fz_context ;
typedef int fz_buffer ;


 int * PDF_NAME (int ) ;
 int QuadPoints ;
 int Rect ;
 int Redact ;
 int Subtype ;
 int fz_append_printf (int *,int *,char*,int ,int ) ;
 int fz_append_string (int *,int *,char*) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int ,int *) ;
 TYPE_6__ pdf_dict_get_rect (int *,int ,int *) ;
 TYPE_5__* pdf_first_annot (int *,int *) ;
 TYPE_5__* pdf_next_annot (int *,TYPE_5__*) ;
 TYPE_7__ pdf_to_quad (int *,int *,int) ;

__attribute__((used)) static void
pdf_redact_end_page(fz_context *ctx, fz_buffer *buf, pdf_obj *res, void *opaque)
{
 pdf_page *page = opaque;
 pdf_annot *annot;
 pdf_obj *qp;
 int i, n;

 fz_append_string(ctx, buf, "0 g\n");

 for (annot = pdf_first_annot(ctx, page); annot; annot = pdf_next_annot(ctx, annot))
 {
  if (pdf_dict_get(ctx, annot->obj, PDF_NAME(Subtype)) == PDF_NAME(Redact))
  {
   qp = pdf_dict_get(ctx, annot->obj, PDF_NAME(QuadPoints));
   n = pdf_array_len(ctx, qp);
   if (n > 0)
   {
    for (i = 0; i < n; i += 8)
    {
     fz_quad q = pdf_to_quad(ctx, qp, i);
     fz_append_printf(ctx, buf, "%g %g m\n", q.ll.x, q.ll.y);
     fz_append_printf(ctx, buf, "%g %g l\n", q.lr.x, q.lr.y);
     fz_append_printf(ctx, buf, "%g %g l\n", q.ur.x, q.ur.y);
     fz_append_printf(ctx, buf, "%g %g l\n", q.ul.x, q.ul.y);
     fz_append_string(ctx, buf, "f\n");
    }
   }
   else
   {
    fz_rect r = pdf_dict_get_rect(ctx, annot->obj, PDF_NAME(Rect));
    fz_append_printf(ctx, buf, "%g %g m\n", r.x0, r.y0);
    fz_append_printf(ctx, buf, "%g %g l\n", r.x1, r.y0);
    fz_append_printf(ctx, buf, "%g %g l\n", r.x1, r.y1);
    fz_append_printf(ctx, buf, "%g %g l\n", r.x0, r.y1);
    fz_append_string(ctx, buf, "f\n");
   }
  }
 }
}
