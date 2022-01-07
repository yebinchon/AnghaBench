
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Kids ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int reset_form_field (int *,int *,int *) ;

void pdf_field_reset(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
 pdf_obj *kids = pdf_dict_get(ctx, field, PDF_NAME(Kids));

 reset_form_field(ctx, doc, field);

 if (kids)
 {
  int i, n = pdf_array_len(ctx, kids);

  for (i = 0; i < n; i++)
   pdf_field_reset(ctx, doc, pdf_array_get(ctx, kids, i));
 }
}
