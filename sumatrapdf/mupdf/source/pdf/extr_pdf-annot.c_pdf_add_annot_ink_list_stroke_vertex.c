
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_7__ {int obj; int page; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_8__ {int y; int x; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_matrix ;
typedef int fz_context ;


 int InkList ;
 int PDF_NAME (int ) ;
 int fz_invert_matrix (int ) ;
 TYPE_2__ fz_transform_point (TYPE_2__,int ) ;
 int * pdf_array_get (int *,int *,scalar_t__) ;
 scalar_t__ pdf_array_len (int *,int *) ;
 int pdf_array_push_real (int *,int *,int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_page_transform (int *,int ,int *,int *) ;

void pdf_add_annot_ink_list_stroke_vertex(fz_context *ctx, pdf_annot *annot, fz_point p)
{
 fz_matrix page_ctm, inv_page_ctm;
 pdf_obj *ink_list, *stroke;

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);
 inv_page_ctm = fz_invert_matrix(page_ctm);

 ink_list = pdf_dict_get(ctx, annot->obj, PDF_NAME(InkList));
 stroke = pdf_array_get(ctx, ink_list, pdf_array_len(ctx, ink_list)-1);

 p = fz_transform_point(p, inv_page_ctm);
 pdf_array_push_real(ctx, stroke, p.x);
 pdf_array_push_real(ctx, stroke, p.y);
}
