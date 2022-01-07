
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_processor ;
typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int * pdf_new_filter_processor_with_text_filter (int *,int *,int,int *,int *,int *,int *,int *,int *) ;

pdf_processor *
pdf_new_filter_processor(fz_context *ctx, pdf_document *doc, pdf_processor *chain, pdf_obj *old_rdb, pdf_obj *new_rdb)
{
 return pdf_new_filter_processor_with_text_filter(ctx, doc, -1, chain, old_rdb, new_rdb, ((void*)0), ((void*)0), ((void*)0));
}
