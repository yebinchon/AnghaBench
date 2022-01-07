
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int AP ;
 int D ;
 int N ;
 int * PDF_NAME (int ) ;
 int Yes ;
 int * find_on_state (int *,int *) ;
 int * pdf_dict_get (int *,int *,int *) ;

pdf_obj *pdf_button_field_on_state(fz_context *ctx, pdf_obj *field)
{
 pdf_obj *ap = pdf_dict_get(ctx, field, PDF_NAME(AP));
 pdf_obj *on = find_on_state(ctx, pdf_dict_get(ctx, ap, PDF_NAME(N)));
 if (!on) on = find_on_state(ctx, pdf_dict_get(ctx, ap, PDF_NAME(D)));
 if (!on) on = PDF_NAME(Yes);
 return on;
}
