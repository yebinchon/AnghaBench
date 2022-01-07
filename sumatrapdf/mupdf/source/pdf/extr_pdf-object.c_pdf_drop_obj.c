
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ kind; int refs; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;
struct TYPE_11__ {TYPE_1__* text; } ;


 scalar_t__ PDF_ARRAY ;
 scalar_t__ PDF_DICT ;
 TYPE_1__* PDF_LIMIT ;
 scalar_t__ PDF_STRING ;
 TYPE_7__* STRING (TYPE_1__*) ;
 scalar_t__ fz_drop_imp16 (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_array (int *,TYPE_1__*) ;
 int pdf_drop_dict (int *,TYPE_1__*) ;

void
pdf_drop_obj(fz_context *ctx, pdf_obj *obj)
{
 if (obj >= PDF_LIMIT)
 {
  if (fz_drop_imp16(ctx, obj, &obj->refs))
  {
   if (obj->kind == PDF_ARRAY)
    pdf_drop_array(ctx, obj);
   else if (obj->kind == PDF_DICT)
    pdf_drop_dict(ctx, obj);
   else if (obj->kind == PDF_STRING)
   {
    fz_free(ctx, STRING(obj)->text);
    fz_free(ctx, obj);
   }
   else
    fz_free(ctx, obj);
  }
 }
}
