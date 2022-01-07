
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;
struct TYPE_10__ {int n; } ;


 TYPE_7__* NAME (TYPE_1__*) ;
 TYPE_1__* PDF_FALSE ;
 TYPE_1__* PDF_LIMIT ;
 scalar_t__ PDF_NAME ;
 int RESOLVE (TYPE_1__*) ;
 int strcmp (int ,int ) ;

int pdf_name_eq(fz_context *ctx, pdf_obj *a, pdf_obj *b)
{
 RESOLVE(a);
 RESOLVE(b);
 if (a <= PDF_FALSE || b <= PDF_FALSE)
  return 0;
 if (a < PDF_LIMIT || b < PDF_LIMIT)
  return (a == b);
 if (a->kind == PDF_NAME && b->kind == PDF_NAME)
  return !strcmp(NAME(a)->n, NAME(b)->n);
 return 0;
}
