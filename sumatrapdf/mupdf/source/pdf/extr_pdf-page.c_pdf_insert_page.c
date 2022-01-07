
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Count ;
 int FZ_ERROR_GENERIC ;
 int INT_MAX ;
 int Kids ;
 int PDF_NAME (int ) ;
 int Pages ;
 int Parent ;
 int Root ;
 int fz_throw (int *,int ,char*) ;
 int pdf_array_insert (int *,int *,int *,int) ;
 int pdf_count_pages (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_int (int *,int *,int ) ;
 int pdf_dict_put (int *,int *,int ,int *) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 int pdf_lookup_page_loc (int *,int *,int,int **,int*) ;
 int * pdf_trailer (int *,int *) ;

void
pdf_insert_page(fz_context *ctx, pdf_document *doc, int at, pdf_obj *page_ref)
{
 int count = pdf_count_pages(ctx, doc);
 pdf_obj *parent, *kids;
 int i;

 if (at < 0)
  at = count;
 if (at == INT_MAX)
  at = count;
 if (at > count)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot insert page beyond end of page tree");

 if (count == 0)
 {
  pdf_obj *root = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root));
  parent = pdf_dict_get(ctx, root, PDF_NAME(Pages));
  if (!parent)
   fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find page tree");
  kids = pdf_dict_get(ctx, parent, PDF_NAME(Kids));
  if (!kids)
   fz_throw(ctx, FZ_ERROR_GENERIC, "malformed page tree");
  pdf_array_insert(ctx, kids, page_ref, 0);
 }
 else if (at == count)
 {

  pdf_lookup_page_loc(ctx, doc, count - 1, &parent, &i);
  kids = pdf_dict_get(ctx, parent, PDF_NAME(Kids));
  pdf_array_insert(ctx, kids, page_ref, i + 1);
 }
 else
 {

  pdf_lookup_page_loc(ctx, doc, at, &parent, &i);
  kids = pdf_dict_get(ctx, parent, PDF_NAME(Kids));
  pdf_array_insert(ctx, kids, page_ref, i);
 }

 pdf_dict_put(ctx, page_ref, PDF_NAME(Parent), parent);


 while (parent)
 {
  count = pdf_dict_get_int(ctx, parent, PDF_NAME(Count));
  pdf_dict_put_int(ctx, parent, PDF_NAME(Count), count + 1);
  parent = pdf_dict_get(ctx, parent, PDF_NAME(Parent));
 }
}
