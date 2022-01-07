
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int assert (int) ;
 void* fz_store_item (int *,int *,void*,size_t,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_dict (int *,int *) ;
 scalar_t__ pdf_is_indirect (int *,int *) ;
 scalar_t__ pdf_is_name (int *,int *) ;
 int pdf_obj_store_type ;

void
pdf_store_item(fz_context *ctx, pdf_obj *key, void *val, size_t itemsize)
{
 void *existing;

 assert(pdf_is_name(ctx, key) || pdf_is_array(ctx, key) || pdf_is_dict(ctx, key) || pdf_is_indirect(ctx, key));
 existing = fz_store_item(ctx, key, val, itemsize, &pdf_obj_store_type);
 assert(existing == ((void*)0));
 (void)existing;
}
