
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float y; } ;
typedef TYPE_1__ fz_html_flow ;
struct TYPE_7__ {float y; scalar_t__ type; struct TYPE_7__* next; struct TYPE_7__* down; int flow_head; scalar_t__ id; } ;
typedef TYPE_2__ fz_html_box ;


 scalar_t__ BOX_FLOW ;
 TYPE_1__* find_first_content (TYPE_2__*) ;
 float find_flow_target (int ,char const*) ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static float
find_box_target(fz_html_box *box, const char *id)
{
 float y;
 while (box)
 {
  if (box->id && !strcmp(id, box->id))
  {
   fz_html_flow *flow = find_first_content(box);
   if (flow)
    return flow->y;
   return box->y;
  }
  if (box->type == BOX_FLOW)
  {
   y = find_flow_target(box->flow_head, id);
   if (y >= 0)
    return y;
  }
  else
  {
   y = find_box_target(box->down, id);
   if (y >= 0)
    return y;
  }
  box = box->next;
 }
 return -1;
}
