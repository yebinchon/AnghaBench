
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_page ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 int fz_transform_rect (int ,int ) ;
 int pdf_page_transform (int *,int *,int *,int *) ;

fz_rect
pdf_bound_page(fz_context *ctx, pdf_page *page)
{
 fz_matrix page_ctm;
 fz_rect mediabox;
 pdf_page_transform(ctx, page, &mediabox, &page_ctm);
 return fz_transform_rect(mediabox, page_ctm);
}
