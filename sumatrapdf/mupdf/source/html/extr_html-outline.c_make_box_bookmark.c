
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_html_flow ;
struct TYPE_3__ {scalar_t__ type; float y; struct TYPE_3__* next; struct TYPE_3__* down; int flow_head; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 scalar_t__ BOX_FLOW ;
 int * make_flow_bookmark (int *,int ,float) ;

__attribute__((used)) static fz_html_flow *
make_box_bookmark(fz_context *ctx, fz_html_box *box, float y)
{
 fz_html_flow *mark;
 while (box)
 {
  if (box->type == BOX_FLOW)
  {
   if (box->y >= y)
   {
    mark = make_flow_bookmark(ctx, box->flow_head, y);
    if (mark)
     return mark;
   }
  }
  else
  {
   mark = make_box_bookmark(ctx, box->down, y);
   if (mark)
    return mark;
  }
  box = box->next;
 }
 return ((void*)0);
}
