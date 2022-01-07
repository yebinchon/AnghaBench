
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_widget ;
typedef int pdf_obj ;
struct TYPE_2__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int Opt ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 char* pdf_array_get_text_string (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get_inheritable (int *,int ,int ) ;

int pdf_choice_widget_options(fz_context *ctx, pdf_widget *tw, int exportval, const char *opts[])
{
 pdf_annot *annot = (pdf_annot *)tw;
 pdf_obj *optarr;
 int i, n, m;

 optarr = pdf_dict_get_inheritable(ctx, annot->obj, PDF_NAME(Opt));
 n = pdf_array_len(ctx, optarr);

 if (opts)
 {
  for (i = 0; i < n; i++)
  {
   m = pdf_array_len(ctx, pdf_array_get(ctx, optarr, i));

   if (m == 2)
    if (exportval)
     opts[i] = pdf_array_get_text_string(ctx, pdf_array_get(ctx, optarr, i), 0);
    else
     opts[i] = pdf_array_get_text_string(ctx, pdf_array_get(ctx, optarr, i), 1);
   else
    opts[i] = pdf_array_get_text_string(ctx, optarr, i);
  }
 }
 return n;
}
