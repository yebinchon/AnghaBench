
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ fz_html_flow ;
typedef int fz_context ;



__attribute__((used)) static int
lookup_flow_bookmark(fz_context *ctx, fz_html_flow *flow, fz_html_flow *mark)
{
 while (flow)
 {
  if (flow == mark)
   return 1;
  flow = flow->next;
 }
 return 0;
}
