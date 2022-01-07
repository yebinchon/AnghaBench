
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_8__ {int obj; int page; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_9__ {int y; int x; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_matrix ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Vertices ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int fz_invert_matrix (int ) ;
 TYPE_2__ fz_transform_point (TYPE_2__,int ) ;
 int pdf_array_put_drop (int *,int *,int,int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_new_real (int *,int ) ;
 int pdf_page_transform (int *,int ,int *,int *) ;
 int vertices_subtypes ;

void pdf_set_annot_vertex(fz_context *ctx, pdf_annot *annot, int i, fz_point p)
{
 fz_matrix page_ctm, inv_page_ctm;
 pdf_obj *vertices;

 check_allowed_subtypes(ctx, annot, PDF_NAME(Vertices), vertices_subtypes);

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);
 inv_page_ctm = fz_invert_matrix(page_ctm);

 p = fz_transform_point(p, inv_page_ctm);

 vertices = pdf_dict_get(ctx, annot->obj, PDF_NAME(Vertices));
 pdf_array_put_drop(ctx, vertices, i * 2 + 0, pdf_new_real(ctx, p.x));
 pdf_array_put_drop(ctx, vertices, i * 2 + 1, pdf_new_real(ctx, p.y));
}
