
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 char* pdf_to_str_buf (int *,int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
string_in_names_list(fz_context *ctx, pdf_obj *p, pdf_obj *names_list)
{
 int n = pdf_array_len(ctx, names_list);
 int i;
 char *str = pdf_to_str_buf(ctx, p);

 for (i = 0; i < n ; i += 2)
 {
  if (!strcmp(pdf_to_str_buf(ctx, pdf_array_get(ctx, names_list, i)), str))
   return 1;
 }
 return 0;
}
