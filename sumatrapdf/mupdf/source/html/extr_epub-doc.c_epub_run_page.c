
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_page ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_cookie ;
typedef int fz_context ;
struct TYPE_2__ {int number; int html; } ;
typedef TYPE_1__ epub_page ;


 int fz_draw_html (int *,int *,int ,int ,int ) ;

__attribute__((used)) static void
epub_run_page(fz_context *ctx, fz_page *page_, fz_device *dev, fz_matrix ctm, fz_cookie *cookie)
{
 epub_page *page = (epub_page*)page_;

 fz_draw_html(ctx, dev, ctm, page->html, page->number);
}
