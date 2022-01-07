
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
 scalar_t__ pdf_is_dict (int *,int *) ;
 int pdf_load_name_tree_imp (int *,int *,int *,int *) ;
 int * pdf_new_dict (int *,int *,int) ;
 int * pdf_trailer (int *,int *) ;

pdf_obj *
pdf_load_name_tree(fz_context *ctx, pdf_document *doc, pdf_obj *which)
{
 pdf_obj *root = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root));
 pdf_obj *names = pdf_dict_get(ctx, root, PDF_NAME(Names));
 pdf_obj *tree = pdf_dict_get(ctx, names, which);
 if (pdf_is_dict(ctx, tree))
 {
  pdf_obj *dict = pdf_new_dict(ctx, doc, 100);
  pdf_load_name_tree_imp(ctx, dict, doc, tree);
  return dict;
 }
 return ((void*)0);
}
