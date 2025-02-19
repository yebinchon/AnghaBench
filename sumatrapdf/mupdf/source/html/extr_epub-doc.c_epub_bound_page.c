
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_page ;
struct TYPE_8__ {scalar_t__* page_margin; scalar_t__ page_h; scalar_t__ page_w; } ;
typedef TYPE_2__ fz_html ;
typedef int fz_context ;
struct TYPE_9__ {int doc; int * ch; } ;
typedef TYPE_3__ epub_page ;
typedef int epub_chapter ;


 size_t B ;
 size_t L ;
 size_t R ;
 size_t T ;
 TYPE_2__* epub_get_laid_out_html (int *,int ,int *) ;
 int fz_drop_html (int *,TYPE_2__*) ;

__attribute__((used)) static fz_rect
epub_bound_page(fz_context *ctx, fz_page *page_)
{
 epub_page *page = (epub_page*)page_;
 epub_chapter *ch = page->ch;
 fz_rect bbox;
 fz_html *html = epub_get_laid_out_html(ctx, page->doc, ch);

 bbox.x0 = 0;
 bbox.y0 = 0;
 bbox.x1 = html->page_w + html->page_margin[L] + html->page_margin[R];
 bbox.y1 = html->page_h + html->page_margin[T] + html->page_margin[B];
 fz_drop_html(ctx, html);
 return bbox;
}
