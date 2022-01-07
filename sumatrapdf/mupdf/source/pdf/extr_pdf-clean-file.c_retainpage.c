
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Parent ;
 int pdf_array_push (int *,int *,int *) ;
 int pdf_dict_put (int *,int *,int ,int *) ;
 int pdf_flatten_inheritable_page_items (int *,int *) ;
 int * pdf_lookup_page_obj (int *,int *,int) ;

__attribute__((used)) static void retainpage(fz_context *ctx, pdf_document *doc, pdf_obj *parent, pdf_obj *kids, int page)
{
 pdf_obj *pageref = pdf_lookup_page_obj(ctx, doc, page-1);

 pdf_flatten_inheritable_page_items(ctx, pageref);

 pdf_dict_put(ctx, pageref, PDF_NAME(Parent), parent);


 pdf_array_push(ctx, kids, pageref);
}
