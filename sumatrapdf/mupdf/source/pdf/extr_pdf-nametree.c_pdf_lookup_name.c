
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Names ;
 int * PDF_NAME (int ) ;
 int Root ;
 int * pdf_dict_get (int *,int *,int *) ;
 int * pdf_lookup_name_imp (int *,int *,int *) ;
 int * pdf_trailer (int *,int *) ;

pdf_obj *
pdf_lookup_name(fz_context *ctx, pdf_document *doc, pdf_obj *which, pdf_obj *needle)
{
 pdf_obj *root = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root));
 pdf_obj *names = pdf_dict_get(ctx, root, PDF_NAME(Names));
 pdf_obj *tree = pdf_dict_get(ctx, names, which);
 return pdf_lookup_name_imp(ctx, tree, needle);
}
