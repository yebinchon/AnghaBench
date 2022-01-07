
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;


 TYPE_1__* PDF_LIMIT ;

int pdf_obj_refs(fz_context *ctx, pdf_obj *obj)
{
 if (obj < PDF_LIMIT)
  return 0;
 return obj->refs;
}
