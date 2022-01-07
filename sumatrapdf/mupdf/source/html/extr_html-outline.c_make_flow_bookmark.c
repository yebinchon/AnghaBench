
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float y; struct TYPE_4__* next; } ;
typedef TYPE_1__ fz_html_flow ;
typedef int fz_context ;



__attribute__((used)) static fz_html_flow *
make_flow_bookmark(fz_context *ctx, fz_html_flow *flow, float y)
{
 while (flow)
 {
  if (flow->y >= y)
   return flow;
  flow = flow->next;
 }
 return ((void*)0);
}
