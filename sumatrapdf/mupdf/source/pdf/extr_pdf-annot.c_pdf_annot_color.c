
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int C ;
 int PDF_NAME (int ) ;
 int pdf_annot_color_imp (int *,int *,int*,float*) ;
 int * pdf_dict_get (int *,int ,int ) ;

void
pdf_annot_color(fz_context *ctx, pdf_annot *annot, int *n, float color[4])
{
 pdf_obj *c = pdf_dict_get(ctx, annot->obj, PDF_NAME(C));
 pdf_annot_color_imp(ctx, c, n, color);
}
