
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;


 int PDF_FLAGS_MARKED ;
 TYPE_1__* PDF_LIMIT ;
 int RESOLVE (TYPE_1__*) ;

void
pdf_unmark_obj(fz_context *ctx, pdf_obj *obj)
{
 RESOLVE(obj);
 if (obj < PDF_LIMIT)
  return;
 obj->flags &= ~PDF_FLAGS_MARKED;
}
