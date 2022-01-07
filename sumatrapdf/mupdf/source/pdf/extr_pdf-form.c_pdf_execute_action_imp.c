
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {scalar_t__ js; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int Fields ;
 int Flags ;
 int JS ;
 int JavaScript ;
 int PDF_NAME (int ) ;
 int ResetForm ;
 int * S ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_int (int *,int *,int ) ;
 int pdf_execute_js_action (int *,TYPE_1__*,int *,char const*,int *) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;
 int pdf_reset_form (int *,TYPE_1__*,int *,int) ;

__attribute__((used)) static void pdf_execute_action_imp(fz_context *ctx, pdf_document *doc, pdf_obj *target, const char *path, pdf_obj *action)
{
 pdf_obj *S = pdf_dict_get(ctx, action, PDF_NAME(S));
 if (pdf_name_eq(ctx, S, PDF_NAME(JavaScript)))
 {
  if (doc->js)
   pdf_execute_js_action(ctx, doc, target, path, pdf_dict_get(ctx, action, PDF_NAME(JS)));
 }
 if (pdf_name_eq(ctx, S, PDF_NAME(ResetForm)))
 {
  pdf_obj *fields = pdf_dict_get(ctx, action, PDF_NAME(Fields));
  int flags = pdf_dict_get_int(ctx, action, PDF_NAME(Flags));
  pdf_reset_form(ctx, doc, fields, flags & 1);
 }
}
