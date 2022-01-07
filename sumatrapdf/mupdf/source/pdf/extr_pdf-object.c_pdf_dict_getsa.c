
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int * pdf_dict_gets (int *,int *,char const*) ;

pdf_obj *
pdf_dict_getsa(fz_context *ctx, pdf_obj *obj, const char *key, const char *abbrev)
{
 pdf_obj *v;
 v = pdf_dict_gets(ctx, obj, key);
 if (v)
  return v;
 return pdf_dict_gets(ctx, obj, abbrev);
}
