
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pool ;
typedef int fz_html_box ;
typedef int fz_context ;


 int FLOW_SBREAK ;
 int add_flow (int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void add_flow_sbreak(fz_context *ctx, fz_pool *pool, fz_html_box *top, fz_html_box *inline_box)
{
 (void)add_flow(ctx, pool, top, inline_box, FLOW_SBREAK, 0);
}
