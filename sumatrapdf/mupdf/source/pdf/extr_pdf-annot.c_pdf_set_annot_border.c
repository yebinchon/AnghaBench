
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int BE ;
 int BS ;
 int Border ;
 int PDF_NAME (int ) ;
 int W ;
 int pdf_dict_del (int *,int ,int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int * pdf_dict_put_dict (int *,int ,int ,int) ;
 int pdf_dict_put_real (int *,int *,int ,float) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int pdf_is_dict (int *,int *) ;

void
pdf_set_annot_border(fz_context *ctx, pdf_annot *annot, float w)
{
 pdf_obj *bs = pdf_dict_get(ctx, annot->obj, PDF_NAME(BS));
 if (!pdf_is_dict(ctx, bs))
  bs = pdf_dict_put_dict(ctx, annot->obj, PDF_NAME(BS), 1);
 pdf_dict_put_real(ctx, bs, PDF_NAME(W), w);

 pdf_dict_del(ctx, annot->obj, PDF_NAME(Border));
 pdf_dict_del(ctx, annot->obj, PDF_NAME(BE));

 pdf_dirty_annot(ctx, annot);
}
