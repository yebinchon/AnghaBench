
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


 int PDF_NAME (int ) ;
 int V ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int ,int ) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_string (int *,int *) ;
 char* pdf_to_text_string (int *,int *) ;

int pdf_choice_widget_value(fz_context *ctx, pdf_widget *tw, const char *opts[])
{
 pdf_annot *annot = (pdf_annot *)tw;
 pdf_obj *optarr;
 int i, n;

 if (!annot)
  return 0;

 optarr = pdf_dict_get(ctx, annot->obj, PDF_NAME(V));

 if (pdf_is_string(ctx, optarr))
 {
  if (opts)
   opts[0] = pdf_to_text_string(ctx, optarr);
  return 1;
 }
 else
 {
  n = pdf_array_len(ctx, optarr);
  if (opts)
  {
   for (i = 0; i < n; i++)
   {
    pdf_obj *elem = pdf_array_get(ctx, optarr, i);
    if (pdf_is_array(ctx, elem))
     elem = pdf_array_get(ctx, elem, 1);
    opts[i] = pdf_to_text_string(ctx, elem);
   }
  }
  return n;
 }
}
