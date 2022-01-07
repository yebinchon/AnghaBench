
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_10__ {int obj; TYPE_5__* page; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_11__ {int y; int x; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_matrix ;
typedef int fz_context ;
struct TYPE_12__ {int * doc; } ;


 int FZ_ERROR_GENERIC ;
 int PDF_NAME (int ) ;
 int Vertices ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int fz_invert_matrix (int ) ;
 int fz_throw (int *,int ,char*) ;
 TYPE_2__ fz_transform_point (TYPE_2__ const,int ) ;
 int pdf_array_push_real (int *,int *,int ) ;
 int pdf_dict_put_drop (int *,int ,int ,int *) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int * pdf_new_array (int *,int *,int) ;
 int pdf_page_transform (int *,TYPE_5__*,int *,int *) ;
 int vertices_subtypes ;

void
pdf_set_annot_vertices(fz_context *ctx, pdf_annot *annot, int n, const fz_point *v)
{
 pdf_document *doc = annot->page->doc;
 fz_matrix page_ctm, inv_page_ctm;
 pdf_obj *vertices;
 fz_point point;
 int i;

 check_allowed_subtypes(ctx, annot, PDF_NAME(Vertices), vertices_subtypes);
 if (n <= 0 || !v)
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid number of vertices");

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);
 inv_page_ctm = fz_invert_matrix(page_ctm);

 vertices = pdf_new_array(ctx, doc, n * 2);
 for (i = 0; i < n; ++i)
 {
  point = fz_transform_point(v[i], inv_page_ctm);
  pdf_array_push_real(ctx, vertices, point.x);
  pdf_array_push_real(ctx, vertices, point.y);
 }
 pdf_dict_put_drop(ctx, annot->obj, PDF_NAME(Vertices), vertices);
 pdf_dirty_annot(ctx, annot);
}
