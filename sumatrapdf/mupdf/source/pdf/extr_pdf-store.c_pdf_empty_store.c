
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_context ;


 int fz_filter_store (int *,int ,int *,int *) ;
 int pdf_filter_store ;
 int pdf_obj_store_type ;

void
pdf_empty_store(fz_context *ctx, pdf_document *doc)
{
 fz_filter_store(ctx, pdf_filter_store, doc, &pdf_obj_store_type);
}
