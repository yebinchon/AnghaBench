
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_store_drop_fn ;
typedef int fz_context ;


 int fz_remove_item (int *,int *,int *,int *) ;
 int pdf_obj_store_type ;

void
pdf_remove_item(fz_context *ctx, fz_store_drop_fn *drop, pdf_obj *key)
{
 fz_remove_item(ctx, drop, key, &pdf_obj_store_type);
}
