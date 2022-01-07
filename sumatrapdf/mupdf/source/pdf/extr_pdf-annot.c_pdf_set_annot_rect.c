
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; int page; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Rect ;
 int fz_invert_matrix (int ) ;
 int fz_transform_rect (int ,int ) ;
 int pdf_dict_put_rect (int *,int ,int ,int ) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int pdf_page_transform (int *,int ,int *,int *) ;

void
pdf_set_annot_rect(fz_context *ctx, pdf_annot *annot, fz_rect rect)
{
 fz_matrix page_ctm, inv_page_ctm;

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);
 inv_page_ctm = fz_invert_matrix(page_ctm);
 rect = fz_transform_rect(rect, inv_page_ctm);

 pdf_dict_put_rect(ctx, annot->obj, PDF_NAME(Rect), rect);
 pdf_dirty_annot(ctx, annot);
}
