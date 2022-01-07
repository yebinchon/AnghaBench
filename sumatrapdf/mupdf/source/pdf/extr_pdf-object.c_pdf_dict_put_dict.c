
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_dict_put_drop (int *,int *,int *,int *) ;
 int pdf_get_bound_document (int *,int *) ;
 int * pdf_new_dict (int *,int ,int) ;

pdf_obj *pdf_dict_put_dict(fz_context *ctx, pdf_obj *dict, pdf_obj *key, int initial)
{
 pdf_obj *obj = pdf_new_dict(ctx, pdf_get_bound_document(ctx, dict), initial);
 pdf_dict_put_drop(ctx, dict, key, obj);
 return obj;
}
