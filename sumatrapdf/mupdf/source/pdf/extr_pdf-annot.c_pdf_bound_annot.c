
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* page; int obj; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_12__ {int y1; int x0; } ;
typedef TYPE_2__ fz_rect ;
struct TYPE_13__ {int y; int x; } ;
typedef TYPE_3__ fz_point ;
typedef int fz_matrix ;
typedef int fz_context ;
struct TYPE_14__ {int obj; } ;


 int F ;
 int PDF_ANNOT_IS_NO_ROTATE ;
 int PDF_NAME (int ) ;
 int Rect ;
 int Rotate ;
 int fz_concat (int ,int ) ;
 int fz_rotate (int) ;
 TYPE_3__ fz_transform_point_xy (int ,int ,int ) ;
 TYPE_2__ fz_transform_rect (TYPE_2__,int ) ;
 int fz_translate (int ,int ) ;
 int pdf_dict_get_inheritable (int *,int ,int ) ;
 int pdf_dict_get_int (int *,int ,int ) ;
 TYPE_2__ pdf_dict_get_rect (int *,int ,int ) ;
 int pdf_page_transform (int *,TYPE_4__*,int *,int *) ;
 int pdf_to_int (int *,int ) ;

fz_rect
pdf_bound_annot(fz_context *ctx, pdf_annot *annot)
{
 fz_matrix page_ctm;
 fz_rect rect;
 int flags;

 rect = pdf_dict_get_rect(ctx, annot->obj, PDF_NAME(Rect));
 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);

 flags = pdf_dict_get_int(ctx, annot->obj, PDF_NAME(F));
 if (flags & PDF_ANNOT_IS_NO_ROTATE)
 {
  int rotate = pdf_to_int(ctx, pdf_dict_get_inheritable(ctx, annot->page->obj, PDF_NAME(Rotate)));
  fz_point tp = fz_transform_point_xy(rect.x0, rect.y1, page_ctm);
  page_ctm = fz_concat(page_ctm, fz_translate(-tp.x, -tp.y));
  page_ctm = fz_concat(page_ctm, fz_rotate(-rotate));
  page_ctm = fz_concat(page_ctm, fz_translate(tp.x, tp.y));
 }

 return fz_transform_rect(rect, page_ctm);
}
