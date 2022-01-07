
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_page ;
typedef int fz_context ;
struct TYPE_4__ {int html; TYPE_1__* doc; } ;
typedef TYPE_2__ epub_page ;
struct TYPE_3__ {int super; } ;


 int fz_drop_document (int *,int *) ;
 int fz_drop_html (int *,int ) ;

__attribute__((used)) static void
epub_drop_page(fz_context *ctx, fz_page *page_)
{
 epub_page *page = (epub_page *)page_;
 fz_drop_document(ctx, &page->doc->super);
 fz_drop_html(ctx, page->html);
}
