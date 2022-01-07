
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* html; } ;
typedef TYPE_3__ html_document ;
typedef int fz_document ;
typedef int fz_context ;
struct TYPE_5__ {int page_h; TYPE_1__* root; } ;
struct TYPE_4__ {int b; } ;


 int ceilf (int) ;

__attribute__((used)) static int
htdoc_count_pages(fz_context *ctx, fz_document *doc_, int chapter)
{
 html_document *doc = (html_document*)doc_;
 if (doc->html->root->b > 0)
  return ceilf(doc->html->root->b / doc->html->page_h);
 return 1;
}
