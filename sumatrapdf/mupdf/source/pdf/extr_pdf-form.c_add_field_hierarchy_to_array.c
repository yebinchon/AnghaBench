
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Exclude ;
 int Kids ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int pdf_array_push (int *,int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;

__attribute__((used)) static void add_field_hierarchy_to_array(fz_context *ctx, pdf_obj *array, pdf_obj *field)
{
 pdf_obj *kids = pdf_dict_get(ctx, field, PDF_NAME(Kids));
 pdf_obj *exclude = pdf_dict_get(ctx, field, PDF_NAME(Exclude));

 if (exclude)
  return;

 pdf_array_push(ctx, array, field);

 if (kids)
 {
  int i, n = pdf_array_len(ctx, kids);

  for (i = 0; i < n; i++)
   add_field_hierarchy_to_array(ctx, array, pdf_array_get(ctx, kids, i));
 }
}
