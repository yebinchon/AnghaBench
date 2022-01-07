
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct genstate {int * pool; } ;
typedef int fz_pool ;
struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* up; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 scalar_t__ BOX_FLOW ;
 int add_flow_anchor (int *,int *,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void generate_anchor(fz_context *ctx, fz_html_box *box, struct genstate *g)
{
 fz_pool *pool = g->pool;
 fz_html_box *flow = box;
 while (flow->type != BOX_FLOW)
  flow = flow->up;
 add_flow_anchor(ctx, pool, flow, box);
}
