
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Parent ;
 int T ;
 char* fz_malloc (int *,int) ;
 int * pdf_dict_get (int *,int *,int ) ;
 char* pdf_dict_get_text_string (int *,int *,int ) ;
 int strcat (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *get_field_name(fz_context *ctx, pdf_obj *field, int spare)
{
 char *res = ((void*)0);
 pdf_obj *parent = pdf_dict_get(ctx, field, PDF_NAME(Parent));
 const char *lname = pdf_dict_get_text_string(ctx, field, PDF_NAME(T));
 int llen = (int)strlen(lname);





 if (llen)
  spare += llen+1;

 if (parent)
 {
  res = get_field_name(ctx, parent, spare);
 }
 else
 {
  res = fz_malloc(ctx, spare+1);
  res[0] = 0;
 }

 if (llen)
 {
  if (res[0])
   strcat(res, ".");

  strcat(res, lname);
 }

 return res;
}
