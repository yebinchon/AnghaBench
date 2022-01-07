
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


 int AA ;
 int F ;
 int JS ;
 int PDF_NAME (int ) ;
 int PDF_WIDGET_TX_FORMAT_DATE ;
 int PDF_WIDGET_TX_FORMAT_NONE ;
 int PDF_WIDGET_TX_FORMAT_NUMBER ;
 int PDF_WIDGET_TX_FORMAT_SPECIAL ;
 int PDF_WIDGET_TX_FORMAT_TIME ;
 int fz_free (int *,char*) ;
 int * pdf_dict_getl (int *,int ,int ,int ,int ,int *) ;
 char* pdf_load_stream_or_string_as_utf8 (int *,int *) ;
 scalar_t__ strstr (char*,char*) ;

int pdf_text_widget_format(fz_context *ctx, pdf_widget *tw)
{
 pdf_annot *annot = (pdf_annot *)tw;
 int type = PDF_WIDGET_TX_FORMAT_NONE;
 pdf_obj *js = pdf_dict_getl(ctx, annot->obj, PDF_NAME(AA), PDF_NAME(F), PDF_NAME(JS), ((void*)0));
 if (js)
 {
  char *code = pdf_load_stream_or_string_as_utf8(ctx, js);
  if (strstr(code, "AFNumber_Format"))
   type = PDF_WIDGET_TX_FORMAT_NUMBER;
  else if (strstr(code, "AFSpecial_Format"))
   type = PDF_WIDGET_TX_FORMAT_SPECIAL;
  else if (strstr(code, "AFDate_FormatEx"))
   type = PDF_WIDGET_TX_FORMAT_DATE;
  else if (strstr(code, "AFTime_FormatEx"))
   type = PDF_WIDGET_TX_FORMAT_TIME;
  fz_free(ctx, code);
 }

 return type;
}
