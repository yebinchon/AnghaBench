
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Off ;
 int * PDF_NAME (int ) ;
 int * pdf_dict_get_key (int *,int *,int) ;
 int pdf_dict_len (int *,int *) ;

__attribute__((used)) static pdf_obj *find_on_state(fz_context *ctx, pdf_obj *dict)
{
 int i, n = pdf_dict_len(ctx, dict);
 for (i = 0; i < n; ++i)
 {
  pdf_obj *key = pdf_dict_get_key(ctx, dict, i);
  if (key != PDF_NAME(Off))
   return key;
 }
 return ((void*)0);
}
