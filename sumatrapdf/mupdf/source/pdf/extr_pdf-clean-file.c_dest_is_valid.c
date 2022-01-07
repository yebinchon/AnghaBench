
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int A ;
 int D ;
 int Dest ;
 int GoTo ;
 int PDF_NAME (int ) ;
 int S ;
 int dest_is_valid_page (int *,int ,int*,int) ;
 int pdf_array_get (int *,int *,int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_is_string (int *,int *) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;
 int string_in_names_list (int *,int *,int *) ;

__attribute__((used)) static int dest_is_valid(fz_context *ctx, pdf_obj *o, int page_count, int *page_object_nums, pdf_obj *names_list)
{
 pdf_obj *p;

 p = pdf_dict_get(ctx, o, PDF_NAME(A));
 if (pdf_name_eq(ctx, pdf_dict_get(ctx, p, PDF_NAME(S)), PDF_NAME(GoTo)) &&
  !string_in_names_list(ctx, pdf_dict_get(ctx, p, PDF_NAME(D)), names_list))
  return 0;

 p = pdf_dict_get(ctx, o, PDF_NAME(Dest));
 if (p == ((void*)0))
 {}
 else if (pdf_is_string(ctx, p))
  return string_in_names_list(ctx, p, names_list);
 else if (!dest_is_valid_page(ctx, pdf_array_get(ctx, p, 0), page_object_nums, page_count))
  return 0;

 return 1;
}
