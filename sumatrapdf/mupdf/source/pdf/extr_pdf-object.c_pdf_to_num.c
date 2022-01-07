
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {int num; } ;


 scalar_t__ OBJ_IS_INDIRECT (int *) ;
 TYPE_1__* REF (int *) ;

int pdf_to_num(fz_context *ctx, pdf_obj *obj)
{
 if (OBJ_IS_INDIRECT(obj))
  return REF(obj)->num;
 return 0;
}
