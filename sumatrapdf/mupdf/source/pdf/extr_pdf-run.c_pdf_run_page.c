
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * doc; } ;
typedef TYPE_1__ pdf_page ;
typedef int pdf_document ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_cookie ;
typedef int fz_context ;


 int pdf_run_page_with_usage (int *,int *,TYPE_1__*,int *,int ,char*,int *) ;

void
pdf_run_page(fz_context *ctx, pdf_page *page, fz_device *dev, fz_matrix ctm, fz_cookie *cookie)
{
 pdf_document *doc = page->doc;
 pdf_run_page_with_usage(ctx, doc, page, dev, ctm, "View", cookie);
}
