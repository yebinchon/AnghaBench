
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; } ;
typedef TYPE_2__ pdf_obj ;
typedef int fz_context ;
struct TYPE_8__ {float f; float i; } ;
struct TYPE_10__ {TYPE_1__ u; } ;


 TYPE_6__* NUM (TYPE_2__*) ;
 scalar_t__ PDF_INT ;
 TYPE_2__* PDF_LIMIT ;
 scalar_t__ PDF_REAL ;
 int RESOLVE (TYPE_2__*) ;

float pdf_to_real(fz_context *ctx, pdf_obj *obj)
{
 RESOLVE(obj);
 if (obj < PDF_LIMIT)
  return 0;
 if (obj->kind == PDF_REAL)
  return NUM(obj)->u.f;
 if (obj->kind == PDF_INT)
  return NUM(obj)->u.i;
 return 0;
}
