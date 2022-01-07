
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int CropBox ;
 int MediaBox ;
 int PDF_NAME (int ) ;
 int Resources ;
 int Rotate ;
 int pdf_flatten_inheritable_page_item (int *,int *,int ) ;

void
pdf_flatten_inheritable_page_items(fz_context *ctx, pdf_obj *page)
{
 pdf_flatten_inheritable_page_item(ctx, page, PDF_NAME(MediaBox));
 pdf_flatten_inheritable_page_item(ctx, page, PDF_NAME(CropBox));
 pdf_flatten_inheritable_page_item(ctx, page, PDF_NAME(Rotate));
 pdf_flatten_inheritable_page_item(ctx, page, PDF_NAME(Resources));
}
