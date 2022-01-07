
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int B ;
 int BS ;
 int D ;
 int I ;
 int * PDF_NAME (int ) ;
 int S ;
 int U ;
 int pdf_dict_putl_drop (int *,int *,int *,int *,int *,int *) ;
 int pdf_field_mark_dirty (int *,int *) ;
 int strcmp (char const*,char*) ;

void pdf_field_set_border_style(fz_context *ctx, pdf_obj *field, const char *text)
{
 pdf_obj *val;

 if (!strcmp(text, "Solid"))
  val = PDF_NAME(S);
 else if (!strcmp(text, "Dashed"))
  val = PDF_NAME(D);
 else if (!strcmp(text, "Beveled"))
  val = PDF_NAME(B);
 else if (!strcmp(text, "Inset"))
  val = PDF_NAME(I);
 else if (!strcmp(text, "Underline"))
  val = PDF_NAME(U);
 else
  return;

 pdf_dict_putl_drop(ctx, field, val, PDF_NAME(BS), PDF_NAME(S), ((void*)0));
 pdf_field_mark_dirty(ctx, field);
}
