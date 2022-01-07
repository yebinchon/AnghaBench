
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int JS ;
 int PDF_NAME (int ) ;
 int ctx ;
 int fz_free (int ,char*) ;
 int fz_write_printf (int ,int ,char*,...) ;
 int out ;
 int * pdf_dict_get (int ,int *,int ) ;
 scalar_t__ pdf_is_indirect (int ,int *) ;
 char* pdf_load_stream_or_string_as_utf8 (int ,int *) ;
 int pdf_print_obj (int ,int ,int *,int,int) ;
 int * pdf_resolve_indirect (int ,int *) ;
 int showtext (char*,int) ;

__attribute__((used)) static void showaction(pdf_obj *action, const char *name)
{
 if (action)
 {
  pdf_obj *js = pdf_dict_get(ctx, action, PDF_NAME(JS));
  if (js)
  {
   char *src = pdf_load_stream_or_string_as_utf8(ctx, js);
   fz_write_printf(ctx, out, "    %s: {\n", name);
   showtext(src, 1);
   fz_write_printf(ctx, out, "    }\n", name);
   fz_free(ctx, src);
  }
  else
  {
   fz_write_printf(ctx, out, "    %s: ", name);
   if (pdf_is_indirect(ctx, action))
    action = pdf_resolve_indirect(ctx, action);
   pdf_print_obj(ctx, out, action, 1, 1);
   fz_write_printf(ctx, out, "\n");
  }
 }
}
