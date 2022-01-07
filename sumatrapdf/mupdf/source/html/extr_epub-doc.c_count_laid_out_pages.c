
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int page_h; TYPE_1__* root; } ;
typedef TYPE_2__ fz_html ;
struct TYPE_4__ {int b; } ;


 int ceilf (int) ;

__attribute__((used)) static int count_laid_out_pages(fz_html *html)
{
 if (html->root->b > 0)
  return ceilf(html->root->b / html->page_h);
 return 1;
}
