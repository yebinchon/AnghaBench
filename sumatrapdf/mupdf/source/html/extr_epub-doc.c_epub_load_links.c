
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_page ;
typedef int fz_link ;
typedef int fz_context ;
struct TYPE_3__ {int number; int html; TYPE_2__* ch; int * doc; } ;
typedef TYPE_1__ epub_page ;
typedef int epub_document ;
struct TYPE_4__ {int path; } ;
typedef TYPE_2__ epub_chapter ;


 int * fz_load_html_links (int *,int ,int ,int ,int *) ;

__attribute__((used)) static fz_link *
epub_load_links(fz_context *ctx, fz_page *page_)
{
 epub_page *page = (epub_page*)page_;
 epub_document *doc = page->doc;
 epub_chapter *ch = page->ch;

 return fz_load_html_links(ctx, page->html, page->number, ch->path, doc);
}
