
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_drop_colorspace_imp ;
 int * pdf_find_item (int *,int ,int *) ;
 int * pdf_load_colorspace_imp (int *,int *) ;
 int pdf_store_item (int *,int *,int *,int) ;

fz_colorspace *
pdf_load_colorspace(fz_context *ctx, pdf_obj *obj)
{
 fz_colorspace *cs;

 if ((cs = pdf_find_item(ctx, fz_drop_colorspace_imp, obj)) != ((void*)0))
 {
  return cs;
 }

 cs = pdf_load_colorspace_imp(ctx, obj);

 pdf_store_item(ctx, obj, cs, 1000);

 return cs;
}
