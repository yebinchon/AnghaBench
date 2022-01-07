
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int OBJ_IS_INDIRECT (int *) ;

int pdf_is_indirect(fz_context *ctx, pdf_obj *obj)
{
 return OBJ_IS_INDIRECT(obj);
}
