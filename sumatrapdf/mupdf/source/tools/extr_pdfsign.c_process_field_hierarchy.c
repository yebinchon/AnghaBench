
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int FT ;
 int Kids ;
 scalar_t__ PDF_NAME (int ) ;
 int Sig ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,scalar_t__) ;
 scalar_t__ pdf_dict_get_inheritable (int *,int *,scalar_t__) ;
 int process_field (int *,int *,int *) ;

__attribute__((used)) static void process_field_hierarchy(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
 pdf_obj *kids = pdf_dict_get(ctx, field, PDF_NAME(Kids));
 if (kids)
 {
  int i, n;
  n = pdf_array_len(ctx, kids);
  for (i = 0; i < n; ++i)
  {
   pdf_obj *kid = pdf_array_get(ctx, kids, i);
   if (pdf_dict_get_inheritable(ctx, field, PDF_NAME(FT)) == PDF_NAME(Sig))
    process_field_hierarchy(ctx, doc, kid);
  }
 }
 else if (pdf_dict_get_inheritable(ctx, field, PDF_NAME(FT)) == PDF_NAME(Sig))
  process_field(ctx, doc, field);
}
