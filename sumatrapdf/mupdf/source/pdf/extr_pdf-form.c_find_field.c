
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int T ;
 int memcmp (char const*,char const*,int) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 char* pdf_dict_get_text_string (int *,int *,int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static pdf_obj *find_field(fz_context *ctx, pdf_obj *dict, const char *name, int len)
{
 int i, n = pdf_array_len(ctx, dict);
 for (i = 0; i < n; i++)
 {
  pdf_obj *field = pdf_array_get(ctx, dict, i);
  const char *part = pdf_dict_get_text_string(ctx, field, PDF_NAME(T));
  if (strlen(part) == (size_t)len && !memcmp(part, name, len))
   return field;
 }
 return ((void*)0);
}
