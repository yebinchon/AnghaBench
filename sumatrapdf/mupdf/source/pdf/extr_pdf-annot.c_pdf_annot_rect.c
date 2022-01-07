
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; int page; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Rect ;
 int fz_transform_rect (int ,int ) ;
 int pdf_dict_get_rect (int *,int ,int ) ;
 int pdf_page_transform (int *,int ,int *,int *) ;

fz_rect
pdf_annot_rect(fz_context *ctx, pdf_annot *annot)
{
 fz_matrix page_ctm;
 fz_rect annot_rect;
 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);
 annot_rect = pdf_dict_get_rect(ctx, annot->obj, PDF_NAME(Rect));
 return fz_transform_rect(annot_rect, page_ctm);
}
