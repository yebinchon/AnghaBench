
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_18__ {int obj; TYPE_7__* page; } ;
typedef TYPE_5__ pdf_annot ;
struct TYPE_17__ {int y; int x; } ;
struct TYPE_16__ {int y; int x; } ;
struct TYPE_15__ {int y; int x; } ;
struct TYPE_14__ {int y; int x; } ;
struct TYPE_19__ {TYPE_4__ lr; TYPE_3__ ll; TYPE_2__ ur; TYPE_1__ ul; } ;
typedef TYPE_6__ fz_quad ;
typedef int fz_matrix ;
typedef int fz_context ;
struct TYPE_20__ {int * doc; } ;


 int PDF_NAME (int ) ;
 int QuadPoints ;
 int check_allowed_subtypes (int *,TYPE_5__*,int ,int ) ;
 int fz_invert_matrix (int ) ;
 TYPE_6__ fz_transform_quad (TYPE_6__,int ) ;
 int pdf_array_push_real (int *,int *,int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_dict_put_drop (int *,int ,int ,int *) ;
 int pdf_dirty_annot (int *,TYPE_5__*) ;
 int pdf_is_array (int *,int *) ;
 int * pdf_new_array (int *,int *,int) ;
 int pdf_page_transform (int *,TYPE_7__*,int *,int *) ;
 int quad_point_subtypes ;

void
pdf_add_annot_quad_point(fz_context *ctx, pdf_annot *annot, fz_quad quad)
{
 pdf_document *doc = annot->page->doc;
 fz_matrix page_ctm, inv_page_ctm;
 pdf_obj *quad_points;

 check_allowed_subtypes(ctx, annot, PDF_NAME(QuadPoints), quad_point_subtypes);

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);
 inv_page_ctm = fz_invert_matrix(page_ctm);

 quad_points = pdf_dict_get(ctx, annot->obj, PDF_NAME(QuadPoints));
 if (!pdf_is_array(ctx, quad_points))
 {
  quad_points = pdf_new_array(ctx, doc, 8);
  pdf_dict_put_drop(ctx, annot->obj, PDF_NAME(QuadPoints), quad_points);
 }





 quad = fz_transform_quad(quad, inv_page_ctm);
 pdf_array_push_real(ctx, quad_points, quad.ul.x);
 pdf_array_push_real(ctx, quad_points, quad.ul.y);
 pdf_array_push_real(ctx, quad_points, quad.ur.x);
 pdf_array_push_real(ctx, quad_points, quad.ur.y);
 pdf_array_push_real(ctx, quad_points, quad.ll.x);
 pdf_array_push_real(ctx, quad_points, quad.ll.y);
 pdf_array_push_real(ctx, quad_points, quad.lr.x);
 pdf_array_push_real(ctx, quad_points, quad.lr.y);

 pdf_dirty_annot(ctx, annot);
}
