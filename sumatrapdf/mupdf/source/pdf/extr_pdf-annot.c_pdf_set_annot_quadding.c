
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Q ;
 int pdf_dict_put_int (int *,int ,int ,int) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;

void
pdf_set_annot_quadding(fz_context *ctx, pdf_annot *annot, int q)
{
 q = (q < 0 || q > 2) ? 0 : q;
 pdf_dict_put_int(ctx, annot->obj, PDF_NAME(Q), q);
 pdf_dirty_annot(ctx, annot);
}
