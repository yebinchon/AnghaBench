
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int QuadPoints ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int quad_point_subtypes ;

int
pdf_annot_quad_point_count(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *quad_points;
 check_allowed_subtypes(ctx, annot, PDF_NAME(QuadPoints), quad_point_subtypes);
 quad_points = pdf_dict_get(ctx, annot->obj, PDF_NAME(QuadPoints));
 return pdf_array_len(ctx, quad_points) / 8;
}
