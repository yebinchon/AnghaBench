
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float h; scalar_t__ type; struct TYPE_6__* next; TYPE_1__* box; } ;
typedef TYPE_2__ fz_html_flow ;
struct TYPE_5__ {float em; } ;


 scalar_t__ FLOW_IMAGE ;

__attribute__((used)) static float measure_line(fz_html_flow *node, fz_html_flow *end, float *baseline)
{
 float max_a = 0, max_d = 0, h = node->h;
 while (node != end)
 {
  if (node->type == FLOW_IMAGE)
  {
   if (node->h > max_a)
    max_a = node->h;
  }
  else
  {
   float a = node->box->em * 0.8f;
   float d = node->box->em * 0.2f;
   if (a > max_a) max_a = a;
   if (d > max_d) max_d = d;
  }
  if (node->h > h) h = node->h;
  if (max_a + max_d > h) h = max_a + max_d;
  node = node->next;
 }
 *baseline = max_a + (h - max_a - max_d) / 2;
 return h;
}
