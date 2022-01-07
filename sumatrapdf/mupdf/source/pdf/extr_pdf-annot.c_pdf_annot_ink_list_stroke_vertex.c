
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_8__ {int page; int obj; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_9__ {void* y; void* x; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_matrix ;
typedef int fz_context ;


 int InkList ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 TYPE_2__ fz_transform_point (TYPE_2__,int ) ;
 int ink_list_subtypes ;
 int * pdf_array_get (int *,int *,int) ;
 void* pdf_array_get_real (int *,int *,int) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_page_transform (int *,int ,int *,int *) ;

fz_point
pdf_annot_ink_list_stroke_vertex(fz_context *ctx, pdf_annot *annot, int i, int k)
{
 pdf_obj *ink_list;
 pdf_obj *stroke;
 fz_matrix page_ctm;
 fz_point point;

 check_allowed_subtypes(ctx, annot, PDF_NAME(InkList), ink_list_subtypes);

 ink_list = pdf_dict_get(ctx, annot->obj, PDF_NAME(InkList));
 stroke = pdf_array_get(ctx, ink_list, i);

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);

 point.x = pdf_array_get_real(ctx, stroke, k * 2 + 0);
 point.y = pdf_array_get_real(ctx, stroke, k * 2 + 1);
 return fz_transform_point(point, page_ctm);
}
