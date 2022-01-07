
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Count ;
 int First ;
 int Last ;
 int PDF_NAME (int ) ;
 int pdf_dict_del (int *,int *,int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_int (int *,int *,int ) ;
 int pdf_dict_put (int *,int *,int ,int *) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 int strip_outline (int *,int *,int *,int,int*,int *,int **,int **) ;

__attribute__((used)) static int strip_outlines(fz_context *ctx, pdf_document *doc, pdf_obj *outlines, int page_count, int *page_object_nums, pdf_obj *names_list)
{
 int nc;
 pdf_obj *first;
 pdf_obj *last;

 if (outlines == ((void*)0))
  return 0;

 first = pdf_dict_get(ctx, outlines, PDF_NAME(First));
 if (first == ((void*)0))
  nc = 0;
 else
  nc = strip_outline(ctx, doc, first, page_count, page_object_nums, names_list, &first, &last);

 if (nc == 0)
 {
  pdf_dict_del(ctx, outlines, PDF_NAME(First));
  pdf_dict_del(ctx, outlines, PDF_NAME(Last));
  pdf_dict_del(ctx, outlines, PDF_NAME(Count));
 }
 else
 {
  int old_count = pdf_dict_get_int(ctx, outlines, PDF_NAME(Count));
  pdf_dict_put(ctx, outlines, PDF_NAME(First), first);
  pdf_dict_put(ctx, outlines, PDF_NAME(Last), last);
  pdf_dict_put_int(ctx, outlines, PDF_NAME(Count), old_count > 0 ? nc : -nc);
 }

 return nc;
}
