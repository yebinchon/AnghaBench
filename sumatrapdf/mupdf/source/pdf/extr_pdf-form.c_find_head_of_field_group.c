
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Parent ;
 int T ;
 int * pdf_dict_get (int *,int *,int ) ;

__attribute__((used)) static pdf_obj *find_head_of_field_group(fz_context *ctx, pdf_obj *obj)
{
 if (obj == ((void*)0) || pdf_dict_get(ctx, obj, PDF_NAME(T)))
  return obj;
 else
  return find_head_of_field_group(ctx, pdf_dict_get(ctx, obj, PDF_NAME(Parent)));
}
