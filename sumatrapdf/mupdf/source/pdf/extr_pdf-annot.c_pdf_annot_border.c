
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int * obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int BS ;
 int Border ;
 int PDF_NAME (int ) ;
 int W ;
 int * pdf_array_get (int *,int *,int) ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_is_number (int *,int *) ;
 float pdf_to_real (int *,int *) ;

float
pdf_annot_border(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *bs, *bs_w, *border;
 bs = pdf_dict_get(ctx, annot->obj, PDF_NAME(BS));
 bs_w = pdf_dict_get(ctx, bs, PDF_NAME(W));
 if (pdf_is_number(ctx, bs_w))
  return pdf_to_real(ctx, bs_w);
 border = pdf_dict_get(ctx, annot->obj, PDF_NAME(Border));
 bs_w = pdf_array_get(ctx, border, 2);
 if (pdf_is_number(ctx, bs_w))
  return pdf_to_real(ctx, bs_w);
 return 1;
}
