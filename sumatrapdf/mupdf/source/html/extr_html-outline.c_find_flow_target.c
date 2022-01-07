
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float y; struct TYPE_5__* next; TYPE_1__* box; } ;
typedef TYPE_2__ fz_html_flow ;
struct TYPE_4__ {scalar_t__ id; } ;


 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static float
find_flow_target(fz_html_flow *flow, const char *id)
{
 while (flow)
 {
  if (flow->box->id && !strcmp(id, flow->box->id))
   return flow->y;
  flow = flow->next;
 }
 return -1;
}
