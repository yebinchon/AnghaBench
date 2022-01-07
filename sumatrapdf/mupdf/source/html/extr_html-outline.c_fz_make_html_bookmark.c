
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int page_h; int root; } ;
typedef TYPE_1__ fz_html ;
typedef int fz_context ;
typedef int fz_bookmark ;


 int make_box_bookmark (int *,int ,int) ;

fz_bookmark
fz_make_html_bookmark(fz_context *ctx, fz_html *html, int page)
{
 return (fz_bookmark)make_box_bookmark(ctx, html->root, page * html->page_h);
}
