
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Kids ;
 int PDF_NAME (int ) ;
 int * find_field (int *,int *,char const*,int) ;
 int * pdf_dict_get (int *,int *,int ) ;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;

pdf_obj *pdf_lookup_field(fz_context *ctx, pdf_obj *form, const char *name)
{
 const char *dot;
 const char *namep;
 pdf_obj *dict = ((void*)0);
 int len;




 dot = name - 1;

 while (dot && form)
 {
  namep = dot + 1;
  dot = strchr(namep, '.');
  len = dot ? dot - namep : (int)strlen(namep);
  dict = find_field(ctx, form, namep, len);
  if (dot)
   form = pdf_dict_get(ctx, dict, PDF_NAME(Kids));
 }

 return dict;
}
