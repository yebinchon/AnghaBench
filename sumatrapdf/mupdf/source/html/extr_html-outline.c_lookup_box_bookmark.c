
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_html_flow ;
struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* next; struct TYPE_3__* down; int flow_head; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 scalar_t__ BOX_FLOW ;
 scalar_t__ lookup_flow_bookmark (int *,int ,int *) ;

__attribute__((used)) static int
lookup_box_bookmark(fz_context *ctx, fz_html_box *box, fz_html_flow *mark)
{
 while (box)
 {
  if (box->type == BOX_FLOW)
  {
   if (lookup_flow_bookmark(ctx, box->flow_head, mark))
    return 1;
  }
  else
  {
   if (lookup_box_bookmark(ctx, box->down, mark))
    return 1;
  }
  box = box->next;
 }
 return 0;
}
