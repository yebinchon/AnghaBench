
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Display_Hidden ;
 int Display_NoPrint ;
 int Display_NoView ;
 int Display_Visible ;
 int F ;
 int Kids ;
 int PDF_ANNOT_IS_HIDDEN ;
 int PDF_ANNOT_IS_NO_VIEW ;
 int PDF_ANNOT_IS_PRINT ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_int (int *,int *,int ) ;

int pdf_field_display(fz_context *ctx, pdf_obj *field)
{
 pdf_obj *kids;
 int f, res = Display_Visible;




 while ((kids = pdf_dict_get(ctx, field, PDF_NAME(Kids))) != ((void*)0))
  field = pdf_array_get(ctx, kids, 0);

 f = pdf_dict_get_int(ctx, field, PDF_NAME(F));

 if (f & PDF_ANNOT_IS_HIDDEN)
 {
  res = Display_Hidden;
 }
 else if (f & PDF_ANNOT_IS_PRINT)
 {
  if (f & PDF_ANNOT_IS_NO_VIEW)
   res = Display_NoView;
 }
 else
 {
  if (f & PDF_ANNOT_IS_NO_VIEW)
   res = Display_Hidden;
  else
   res = Display_NoPrint;
 }

 return res;
}
