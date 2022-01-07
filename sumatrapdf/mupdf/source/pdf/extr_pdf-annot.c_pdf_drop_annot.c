
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj; int ap; int refs; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_obj (int *,int ) ;

void
pdf_drop_annot(fz_context *ctx, pdf_annot *annot)
{
 if (fz_drop_imp(ctx, annot, &annot->refs))
 {
  pdf_drop_obj(ctx, annot->ap);
  pdf_drop_obj(ctx, annot->obj);
  fz_free(ctx, annot);
 }
}
