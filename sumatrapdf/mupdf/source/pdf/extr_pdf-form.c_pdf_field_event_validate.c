
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_js ;
struct TYPE_4__ {int * js; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int * pdf_dict_getp (int *,int *,char*) ;
 int pdf_execute_js_action (int *,TYPE_1__*,int *,char*,int *) ;
 int pdf_js_event_init (int *,int *,char const*,int) ;
 int pdf_js_event_result (int *) ;

int pdf_field_event_validate(fz_context *ctx, pdf_document *doc, pdf_obj *field, const char *value)
{
 pdf_js *js = doc->js;
 if (js)
 {
  pdf_obj *action = pdf_dict_getp(ctx, field, "AA/V/JS");
  if (action)
  {
   pdf_js_event_init(js, field, value, 1);
   pdf_execute_js_action(ctx, doc, field, "AA/V/JS", action);
   return pdf_js_event_result(js);
  }
 }
 return 1;
}
