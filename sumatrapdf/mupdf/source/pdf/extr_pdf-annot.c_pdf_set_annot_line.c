
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_11__ {int obj; TYPE_6__* page; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_12__ {int y; int x; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_matrix ;
typedef int fz_context ;
struct TYPE_13__ {int doc; } ;


 int L ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int fz_invert_matrix (int ) ;
 TYPE_2__ fz_transform_point (TYPE_2__,int ) ;
 int line_subtypes ;
 int pdf_array_push_real (int *,int *,int ) ;
 int pdf_dict_put_drop (int *,int ,int ,int *) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int * pdf_new_array (int *,int ,int) ;
 int pdf_page_transform (int *,TYPE_6__*,int *,int *) ;

void
pdf_set_annot_line(fz_context *ctx, pdf_annot *annot, fz_point a, fz_point b)
{
 fz_matrix page_ctm, inv_page_ctm;
 pdf_obj *line;

 check_allowed_subtypes(ctx, annot, PDF_NAME(L), line_subtypes);

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);
 inv_page_ctm = fz_invert_matrix(page_ctm);

 a = fz_transform_point(a, inv_page_ctm);
 b = fz_transform_point(b, inv_page_ctm);

 line = pdf_new_array(ctx, annot->page->doc, 4);
 pdf_dict_put_drop(ctx, annot->obj, PDF_NAME(L), line);
 pdf_array_push_real(ctx, line, a.x);
 pdf_array_push_real(ctx, line, a.y);
 pdf_array_push_real(ctx, line, b.x);
 pdf_array_push_real(ctx, line, b.y);

 pdf_dirty_annot(ctx, annot);
}
