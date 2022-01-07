
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int CA ;
 int PDF_NAME (int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 scalar_t__ pdf_is_number (int *,int *) ;
 float pdf_to_real (int *,int *) ;

float pdf_annot_opacity(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *ca = pdf_dict_get(ctx, annot->obj, PDF_NAME(CA));
 if (pdf_is_number(ctx, ca))
  return pdf_to_real(ctx, ca);
 return 1;
}
