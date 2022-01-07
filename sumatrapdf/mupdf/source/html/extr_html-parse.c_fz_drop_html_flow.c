
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int image; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ content; struct TYPE_5__* next; } ;
typedef TYPE_2__ fz_html_flow ;
typedef int fz_context ;


 scalar_t__ FLOW_IMAGE ;
 int fz_drop_image (int *,int ) ;

__attribute__((used)) static void fz_drop_html_flow(fz_context *ctx, fz_html_flow *flow)
{
 while (flow)
 {
  fz_html_flow *next = flow->next;
  if (flow->type == FLOW_IMAGE)
   fz_drop_image(ctx, flow->content.image);
  flow = next;
 }
}
