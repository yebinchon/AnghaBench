
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_9__ {int obj; int page; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_10__ {int y; int x; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_matrix ;
typedef int fz_context ;


 int InkList ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int fz_invert_matrix (int ) ;
 TYPE_2__ fz_transform_point (TYPE_2__,int ) ;
 int ink_list_subtypes ;
 int * pdf_array_push_array (int *,int *,int) ;
 int pdf_array_push_real (int *,int *,int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int * pdf_dict_put_array (int *,int ,int ,int) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int pdf_is_array (int *,int *) ;
 int pdf_page_transform (int *,int ,int *,int *) ;

void
pdf_add_annot_ink_list(fz_context *ctx, pdf_annot *annot, int n, fz_point p[])
{
 fz_matrix page_ctm, inv_page_ctm;
 pdf_obj *ink_list, *stroke;
 int i;

 check_allowed_subtypes(ctx, annot, PDF_NAME(InkList), ink_list_subtypes);

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);
 inv_page_ctm = fz_invert_matrix(page_ctm);

 ink_list = pdf_dict_get(ctx, annot->obj, PDF_NAME(InkList));
 if (!pdf_is_array(ctx, ink_list))
  ink_list = pdf_dict_put_array(ctx, annot->obj, PDF_NAME(InkList), 10);

 stroke = pdf_array_push_array(ctx, ink_list, n * 2);
 for (i = 0; i < n; ++i)
 {
  fz_point tp = fz_transform_point(p[i], inv_page_ctm);
  pdf_array_push_real(ctx, stroke, tp.x);
  pdf_array_push_real(ctx, stroke, tp.y);
 }

 pdf_dirty_annot(ctx, annot);
}
