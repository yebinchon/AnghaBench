
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int AS ;
 int Kids ;
 int Off ;
 int * PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int *) ;
 int * pdf_dict_getp (int *,int *,char*) ;
 scalar_t__ pdf_dict_gets (int *,int *,char const*) ;
 int pdf_dict_put_drop (int *,int *,int *,int *) ;
 int * pdf_new_name (int *,char const*) ;

__attribute__((used)) static void update_checkbox_selector(fz_context *ctx, pdf_document *doc, pdf_obj *field, const char *val)
{
 pdf_obj *kids = pdf_dict_get(ctx, field, PDF_NAME(Kids));

 if (kids)
 {
  int i, n = pdf_array_len(ctx, kids);

  for (i = 0; i < n; i++)
   update_checkbox_selector(ctx, doc, pdf_array_get(ctx, kids, i), val);
 }
 else
 {
  pdf_obj *n = pdf_dict_getp(ctx, field, "AP/N");
  pdf_obj *oval;

  if (pdf_dict_gets(ctx, n, val))
   oval = pdf_new_name(ctx, val);
  else
   oval = PDF_NAME(Off);
  pdf_dict_put_drop(ctx, field, PDF_NAME(AS), oval);
 }
}
