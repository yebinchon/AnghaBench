
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int number; TYPE_2__* doc; } ;
typedef TYPE_1__ html_page ;
struct TYPE_5__ {int html; } ;
typedef TYPE_2__ html_document ;
typedef int fz_page ;
typedef int fz_link ;
typedef int fz_context ;


 int * fz_load_html_links (int *,int ,int ,char*,TYPE_2__*) ;

__attribute__((used)) static fz_link *
htdoc_load_links(fz_context *ctx, fz_page *page_)
{
 html_page *page = (html_page*)page_;
 html_document *doc = page->doc;
 return fz_load_html_links(ctx, doc->html, page->number, "", doc);
}
