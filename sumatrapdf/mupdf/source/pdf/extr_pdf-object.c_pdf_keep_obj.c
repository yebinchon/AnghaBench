
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int refs; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;


 TYPE_1__* PDF_LIMIT ;
 TYPE_1__* fz_keep_imp16 (int *,TYPE_1__*,int *) ;

pdf_obj *
pdf_keep_obj(fz_context *ctx, pdf_obj *obj)
{
 if (obj >= PDF_LIMIT)
  return fz_keep_imp16(ctx, obj, &obj->refs);
 return obj;
}
