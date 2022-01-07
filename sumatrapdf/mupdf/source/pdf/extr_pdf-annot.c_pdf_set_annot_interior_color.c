
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_annot ;
typedef int fz_context ;


 int IC ;
 int PDF_NAME (int ) ;
 int interior_color_subtypes ;
 int pdf_set_annot_color_imp (int *,int *,int ,int,float const*,int ) ;

void
pdf_set_annot_interior_color(fz_context *ctx, pdf_annot *annot, int n, const float color[4])
{
 pdf_set_annot_color_imp(ctx, annot, PDF_NAME(IC), n, color, interior_color_subtypes);
}
