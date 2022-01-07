
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Q ;
 int pdf_dict_get_int (int *,int ,int ) ;

int
pdf_annot_quadding(fz_context *ctx, pdf_annot *annot)
{
 int q = pdf_dict_get_int(ctx, annot->obj, PDF_NAME(Q));
 return (q < 0 || q > 2) ? 0 : q;
}
