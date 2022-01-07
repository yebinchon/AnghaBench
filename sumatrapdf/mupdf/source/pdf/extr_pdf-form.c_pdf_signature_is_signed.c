
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int FT ;
 int * PDF_NAME (int ) ;
 int Sig ;
 int V ;
 int * pdf_dict_get_inheritable (int *,int *,int *) ;

int pdf_signature_is_signed(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
 if (pdf_dict_get_inheritable(ctx, field, PDF_NAME(FT)) != PDF_NAME(Sig))
  return 0;
 return pdf_dict_get_inheritable(ctx, field, PDF_NAME(V)) != ((void*)0);
}
