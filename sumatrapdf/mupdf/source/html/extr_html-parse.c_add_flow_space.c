
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_pool ;
struct TYPE_3__ {int expand; } ;
typedef TYPE_1__ fz_html_flow ;
typedef int fz_html_box ;
typedef int fz_context ;


 int FLOW_SPACE ;
 TYPE_1__* add_flow (int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void add_flow_space(fz_context *ctx, fz_pool *pool, fz_html_box *top, fz_html_box *inline_box)
{
 fz_html_flow *flow = add_flow(ctx, pool, top, inline_box, FLOW_SPACE, 0);
 flow->expand = 1;
}
