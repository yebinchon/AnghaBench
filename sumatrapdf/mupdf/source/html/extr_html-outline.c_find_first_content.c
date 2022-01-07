
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_html_flow ;
struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* down; int * flow_head; } ;
typedef TYPE_1__ fz_html_box ;


 scalar_t__ BOX_FLOW ;

__attribute__((used)) static fz_html_flow *
find_first_content(fz_html_box *box)
{
 while (box)
 {
  if (box->type == BOX_FLOW)
   return box->flow_head;
  box = box->down;
 }
 return ((void*)0);
}
