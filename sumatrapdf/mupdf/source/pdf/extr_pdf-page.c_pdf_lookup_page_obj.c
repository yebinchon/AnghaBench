
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int * pdf_lookup_page_loc (int *,int *,int,int *,int *) ;

pdf_obj *
pdf_lookup_page_obj(fz_context *ctx, pdf_document *doc, int needle)
{
 return pdf_lookup_page_loc(ctx, doc, needle, ((void*)0), ((void*)0));
}
