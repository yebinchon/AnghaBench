
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Parent ;
 int * pdf_dict_get (int *,int *,int ) ;
 int * pdf_dict_gets (int *,int *,char*) ;
 int * pdf_resolve_indirect (int *,int *) ;

__attribute__((used)) static pdf_obj *
lpr_inherit(fz_context *ctx, pdf_obj *node, char *text, int depth)
{
 do
 {
  pdf_obj *o = pdf_dict_gets(ctx, node, text);

  if (o)
   return pdf_resolve_indirect(ctx, o);
  node = pdf_dict_get(ctx, node, PDF_NAME(Parent));
  depth--;
 }
 while (depth >= 0 && node);

 return ((void*)0);
}
