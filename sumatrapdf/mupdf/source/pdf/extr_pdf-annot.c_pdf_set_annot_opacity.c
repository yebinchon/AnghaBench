
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int CA ;
 int PDF_NAME (int ) ;
 int pdf_dict_del (int *,int ,int ) ;
 int pdf_dict_put_real (int *,int ,int ,float) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;

void pdf_set_annot_opacity(fz_context *ctx, pdf_annot *annot, float opacity)
{
 if (opacity != 1)
  pdf_dict_put_real(ctx, annot->obj, PDF_NAME(CA), opacity);
 else
  pdf_dict_del(ctx, annot->obj, PDF_NAME(CA));
 pdf_dirty_annot(ctx, annot);
}
