
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int pdf_drop_obj (int *,void*) ;

__attribute__((used)) static void pdf_drop_obj_as_void(fz_context *ctx, void *obj)
{
 pdf_drop_obj(ctx, obj);
}
