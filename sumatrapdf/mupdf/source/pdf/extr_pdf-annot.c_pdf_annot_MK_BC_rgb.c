
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int * obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int BC ;
 int MK ;
 int PDF_NAME (int ) ;
 int pdf_annot_color_rgb (int *,int *,float*) ;
 int * pdf_dict_get (int *,int *,int ) ;

int
pdf_annot_MK_BC_rgb(fz_context *ctx, pdf_annot *annot, float rgb[3])
{
 pdf_obj *mk_bc = pdf_dict_get(ctx, pdf_dict_get(ctx, annot->obj, PDF_NAME(MK)), PDF_NAME(BC));
 return pdf_annot_color_rgb(ctx, mk_bc, rgb);
}
