
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int InkList ;
 int PDF_NAME (int ) ;
 int pdf_dict_del (int *,int ,int ) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;

void
pdf_clear_annot_ink_list(fz_context *ctx, pdf_annot *annot)
{
 pdf_dict_del(ctx, annot->obj, PDF_NAME(InkList));
 pdf_dirty_annot(ctx, annot);
}
