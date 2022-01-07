
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Kids ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dirty_obj (int *,int *) ;

__attribute__((used)) static void pdf_field_mark_dirty(fz_context *ctx, pdf_obj *field)
{
 pdf_obj *kids = pdf_dict_get(ctx, field, PDF_NAME(Kids));
 if (kids)
 {
  int i, n = pdf_array_len(ctx, kids);
  for (i = 0; i < n; i++)
   pdf_field_mark_dirty(ctx, pdf_array_get(ctx, kids, i));
 }
 pdf_dirty_obj(ctx, field);
}
