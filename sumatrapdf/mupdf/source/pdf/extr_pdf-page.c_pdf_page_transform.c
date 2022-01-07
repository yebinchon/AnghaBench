
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_page ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 int pdf_page_obj_transform (int *,int ,int *,int *) ;

void
pdf_page_transform(fz_context *ctx, pdf_page *page, fz_rect *page_mediabox, fz_matrix *page_ctm)
{
 pdf_page_obj_transform(ctx, page->obj, page_mediabox, page_ctm);
}
