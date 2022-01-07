
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; TYPE_2__* doc; } ;
typedef TYPE_1__ html_page ;
struct TYPE_4__ {int html; } ;
typedef TYPE_2__ html_document ;
typedef int fz_page ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_cookie ;
typedef int fz_context ;


 int fz_draw_html (int *,int *,int ,int ,int ) ;

__attribute__((used)) static void
htdoc_run_page(fz_context *ctx, fz_page *page_, fz_device *dev, fz_matrix ctm, fz_cookie *cookie)
{
 html_page *page = (html_page*)page_;
 html_document *doc = page->doc;
 fz_draw_html(ctx, dev, ctm, doc->html, page->number);
}
