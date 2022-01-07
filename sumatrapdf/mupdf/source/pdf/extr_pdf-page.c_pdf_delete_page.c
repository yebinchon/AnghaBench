
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Count ;
 int Kids ;
 int PDF_NAME (int ) ;
 int Parent ;
 int pdf_array_delete (int *,int *,int) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_int (int *,int *,int ) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 int pdf_lookup_page_loc (int *,int *,int,int **,int*) ;

void
pdf_delete_page(fz_context *ctx, pdf_document *doc, int at)
{
 pdf_obj *parent, *kids;
 int i;

 pdf_lookup_page_loc(ctx, doc, at, &parent, &i);
 kids = pdf_dict_get(ctx, parent, PDF_NAME(Kids));
 pdf_array_delete(ctx, kids, i);

 while (parent)
 {
  int count = pdf_dict_get_int(ctx, parent, PDF_NAME(Count));
  pdf_dict_put_int(ctx, parent, PDF_NAME(Count), count - 1);
  parent = pdf_dict_get(ctx, parent, PDF_NAME(Parent));
 }
}
