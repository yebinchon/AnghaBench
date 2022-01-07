
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* doc; int obj; int widgets; int annots; int links; } ;
typedef TYPE_2__ pdf_page ;
typedef int fz_context ;
struct TYPE_4__ {int super; } ;


 int fz_drop_document (int *,int *) ;
 int fz_drop_link (int *,int ) ;
 int pdf_drop_annots (int *,int ) ;
 int pdf_drop_obj (int *,int ) ;
 int pdf_drop_widgets (int *,int ) ;

__attribute__((used)) static void
pdf_drop_page_imp(fz_context *ctx, pdf_page *page)
{
 fz_drop_link(ctx, page->links);
 pdf_drop_annots(ctx, page->annots);
 pdf_drop_widgets(ctx, page->widgets);

 pdf_drop_obj(ctx, page->obj);

 fz_drop_document(ctx, &page->doc->super);
}
