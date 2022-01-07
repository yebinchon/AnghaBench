
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_9__ {int obj; int page; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_10__ {void* y; void* x; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_matrix ;
typedef int fz_context ;


 int L ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 TYPE_2__ fz_transform_point (TYPE_2__,int ) ;
 int line_subtypes ;
 void* pdf_array_get_real (int *,int *,int) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_page_transform (int *,int ,int *,int *) ;

void
pdf_annot_line(fz_context *ctx, pdf_annot *annot, fz_point *a, fz_point *b)
{
 fz_matrix page_ctm;
 pdf_obj *line;

 check_allowed_subtypes(ctx, annot, PDF_NAME(L), line_subtypes);

 pdf_page_transform(ctx, annot->page, ((void*)0), &page_ctm);

 line = pdf_dict_get(ctx, annot->obj, PDF_NAME(L));
 a->x = pdf_array_get_real(ctx, line, 0);
 a->y = pdf_array_get_real(ctx, line, 1);
 b->x = pdf_array_get_real(ctx, line, 2);
 b->y = pdf_array_get_real(ctx, line, 3);
 *a = fz_transform_point(*a, page_ctm);
 *b = fz_transform_point(*b, page_ctm);
}
