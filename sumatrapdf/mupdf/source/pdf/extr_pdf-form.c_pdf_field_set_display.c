
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;






 int F ;
 int Kids ;
 int PDF_ANNOT_IS_HIDDEN ;
 int PDF_ANNOT_IS_NO_VIEW ;
 int PDF_ANNOT_IS_PRINT ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_int (int *,int *,int ) ;
 int pdf_dict_put_drop (int *,int *,int ,int *) ;
 int * pdf_new_int (int *,int) ;

void pdf_field_set_display(fz_context *ctx, pdf_obj *field, int d)
{
 pdf_obj *kids = pdf_dict_get(ctx, field, PDF_NAME(Kids));

 if (!kids)
 {
  int mask = (PDF_ANNOT_IS_HIDDEN|PDF_ANNOT_IS_PRINT|PDF_ANNOT_IS_NO_VIEW);
  int f = pdf_dict_get_int(ctx, field, PDF_NAME(F)) & ~mask;
  pdf_obj *fo;

  switch (d)
  {
  case 128:
   f |= PDF_ANNOT_IS_PRINT;
   break;
  case 131:
   f |= PDF_ANNOT_IS_HIDDEN;
   break;
  case 129:
   f |= (PDF_ANNOT_IS_PRINT|PDF_ANNOT_IS_NO_VIEW);
   break;
  case 130:
   break;
  }

  fo = pdf_new_int(ctx, f);
  pdf_dict_put_drop(ctx, field, PDF_NAME(F), fo);
 }
 else
 {
  int i, n = pdf_array_len(ctx, kids);

  for (i = 0; i < n; i++)
   pdf_field_set_display(ctx, pdf_array_get(ctx, kids, i), d);
 }
}
