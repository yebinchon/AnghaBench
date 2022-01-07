
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int pdf_page ;
typedef int pdf_obj ;
struct TYPE_11__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_rect ;
typedef int fz_quad ;
struct TYPE_12__ {int f; int e; } ;
typedef TYPE_2__ fz_matrix ;
typedef int fz_context ;


 int * PDF_NAME (int ) ;
 int QuadPoints ;
 int Rect ;
 int Redact ;
 int Subtype ;
 TYPE_2__ fz_concat (TYPE_2__,TYPE_2__) ;
 scalar_t__ fz_is_point_inside_quad (int ,int ) ;
 scalar_t__ fz_is_point_inside_rect (int ,int ) ;
 int fz_make_point (int ,int ) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int ,int *) ;
 int pdf_dict_get_rect (int *,int ,int *) ;
 TYPE_1__* pdf_first_annot (int *,int *) ;
 TYPE_1__* pdf_next_annot (int *,TYPE_1__*) ;
 int pdf_to_quad (int *,int *,int) ;

__attribute__((used)) static int
pdf_redact_text_filter(fz_context *ctx, void *opaque, int *ucsbuf, int ucslen, fz_matrix trm, fz_matrix ctm, fz_rect bbox)
{
 pdf_page *page = opaque;
 pdf_annot *annot;
 pdf_obj *qp;
 fz_rect r;
 fz_quad q;
 int i, n;

 trm = fz_concat(trm, ctm);

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
     q = pdf_to_quad(ctx, qp, i);
     if (fz_is_point_inside_quad(fz_make_point(trm.e, trm.f), q))
      return 1;
    }
   }
   else
   {
    r = pdf_dict_get_rect(ctx, annot->obj, PDF_NAME(Rect));
    if (fz_is_point_inside_rect(fz_make_point(trm.e, trm.f), r))
     return 1;
   }
  }
 }

 return 0;
}
