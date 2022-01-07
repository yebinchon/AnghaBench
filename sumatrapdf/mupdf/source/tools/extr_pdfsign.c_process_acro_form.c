
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int AcroForm ;
 int Fields ;
 int PDF_NAME (int ) ;
 int Root ;
 int pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int * pdf_trailer (int *,int *) ;
 int process_field_hierarchy (int *,int *,int ) ;

__attribute__((used)) static void process_acro_form(fz_context *ctx, pdf_document *doc)
{
 pdf_obj *trailer = pdf_trailer(ctx, doc);
 pdf_obj *root = pdf_dict_get(ctx, trailer, PDF_NAME(Root));
 pdf_obj *acroform = pdf_dict_get(ctx, root, PDF_NAME(AcroForm));
 pdf_obj *fields = pdf_dict_get(ctx, acroform, PDF_NAME(Fields));
 int i, n = pdf_array_len(ctx, fields);
 for (i = 0; i < n; ++i)
  process_field_hierarchy(ctx, doc, pdf_array_get(ctx, fields, i));
}
