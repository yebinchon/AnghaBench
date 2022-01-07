
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_annot ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int QuadPoints ;
 int is_allowed_subtype (int *,int *,int ,int ) ;
 int quad_point_subtypes ;

int
pdf_annot_has_quad_points(fz_context *ctx, pdf_annot *annot)
{
 return is_allowed_subtype(ctx, annot, PDF_NAME(QuadPoints), quad_point_subtypes);
}
