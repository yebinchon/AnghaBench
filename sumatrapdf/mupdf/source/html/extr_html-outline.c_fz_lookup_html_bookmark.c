
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; } ;
typedef TYPE_1__ fz_html_flow ;
struct TYPE_6__ {int page_h; int root; } ;
typedef TYPE_2__ fz_html ;
typedef int fz_context ;
typedef scalar_t__ fz_bookmark ;


 scalar_t__ lookup_box_bookmark (int *,int ,TYPE_1__*) ;

int
fz_lookup_html_bookmark(fz_context *ctx, fz_html *html, fz_bookmark mark)
{
 fz_html_flow *flow = (fz_html_flow*)mark;
 if (flow && lookup_box_bookmark(ctx, html->root, flow))
  return (int)(flow->y / html->page_h);
 return -1;
}
