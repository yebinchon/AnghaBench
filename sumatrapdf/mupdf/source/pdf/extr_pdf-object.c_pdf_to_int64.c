
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; } ;
typedef TYPE_2__ pdf_obj ;
typedef scalar_t__ int64_t ;
typedef int fz_context ;
struct TYPE_8__ {scalar_t__ f; scalar_t__ i; } ;
struct TYPE_10__ {TYPE_1__ u; } ;


 TYPE_6__* NUM (TYPE_2__*) ;
 scalar_t__ PDF_INT ;
 TYPE_2__* PDF_LIMIT ;
 scalar_t__ PDF_REAL ;
 int RESOLVE (TYPE_2__*) ;

int64_t pdf_to_int64(fz_context *ctx, pdf_obj *obj)
{
 RESOLVE(obj);
 if (obj < PDF_LIMIT)
  return 0;
 if (obj->kind == PDF_INT)
  return NUM(obj)->u.i;
 if (obj->kind == PDF_REAL)
  return (NUM(obj)->u.f + 0.5f);
 return 0;
}
