
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Dests ;
 int Names ;
 int * PDF_NAME (int ) ;
 int Root ;
 int * pdf_dict_get (int *,int *,int *) ;
 int * pdf_dict_gets (int *,int *,int ) ;
 scalar_t__ pdf_is_name (int *,int *) ;
 int * pdf_lookup_name_imp (int *,int *,int *) ;
 int pdf_to_str_buf (int *,int *) ;
 int * pdf_trailer (int *,int *) ;

pdf_obj *
pdf_lookup_dest(fz_context *ctx, pdf_document *doc, pdf_obj *needle)
{
 pdf_obj *root = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root));
 pdf_obj *dests = pdf_dict_get(ctx, root, PDF_NAME(Dests));
 pdf_obj *names = pdf_dict_get(ctx, root, PDF_NAME(Names));
 pdf_obj *dest = ((void*)0);


 if (dests)
 {
  if (pdf_is_name(ctx, needle))
   return pdf_dict_get(ctx, dests, needle);
  else
   return pdf_dict_gets(ctx, dests, pdf_to_str_buf(ctx, needle));
 }


 if (names && !dest)
 {
  pdf_obj *tree = pdf_dict_get(ctx, names, PDF_NAME(Dests));
  return pdf_lookup_name_imp(ctx, tree, needle);
 }

 return ((void*)0);
}
