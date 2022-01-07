
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int PDF_NAME (int ) ;
 int Pages ;
 int Root ;
 int fz_throw (int *,int ,char*,...) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int * pdf_lookup_page_loc_imp (int *,int *,int *,int*,int **,int*) ;
 int * pdf_trailer (int *,int *) ;

pdf_obj *
pdf_lookup_page_loc(fz_context *ctx, pdf_document *doc, int needle, pdf_obj **parentp, int *indexp)
{
 pdf_obj *root = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root));
 pdf_obj *node = pdf_dict_get(ctx, root, PDF_NAME(Pages));
 int skip = needle;
 pdf_obj *hit;

 if (!node)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find page tree");

 hit = pdf_lookup_page_loc_imp(ctx, doc, node, &skip, parentp, indexp);
 if (!hit)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find page %d in page tree", needle+1);
 return hit;
}
