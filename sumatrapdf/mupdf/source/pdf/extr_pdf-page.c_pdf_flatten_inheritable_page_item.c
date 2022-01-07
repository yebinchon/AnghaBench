
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int * pdf_dict_get_inheritable (int *,int *,int *) ;
 int pdf_dict_put (int *,int *,int *,int *) ;

__attribute__((used)) static void
pdf_flatten_inheritable_page_item(fz_context *ctx, pdf_obj *page, pdf_obj *key)
{
 pdf_obj *val = pdf_dict_get_inheritable(ctx, page, key);
 if (val)
  pdf_dict_put(ctx, page, key, val);
}
