
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Kids ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int set_check (int *,int *,int *,int *) ;

__attribute__((used)) static void set_check_grp(fz_context *ctx, pdf_document *doc, pdf_obj *grp, pdf_obj *val)
{
 pdf_obj *kids = pdf_dict_get(ctx, grp, PDF_NAME(Kids));

 if (kids == ((void*)0))
 {
  set_check(ctx, doc, grp, val);
 }
 else
 {
  int i, n = pdf_array_len(ctx, kids);

  for (i = 0; i < n; i++)
   set_check_grp(ctx, doc, pdf_array_get(ctx, kids, i), val);
 }
}
