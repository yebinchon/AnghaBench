
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pool ;
typedef int fz_image ;
struct TYPE_4__ {int image; } ;
struct TYPE_5__ {TYPE_1__ content; } ;
typedef TYPE_2__ fz_html_flow ;
typedef int fz_html_box ;
typedef int fz_context ;


 int FLOW_IMAGE ;
 TYPE_2__* add_flow (int *,int *,int *,int *,int ,int ) ;
 int fz_keep_image (int *,int *) ;

__attribute__((used)) static void add_flow_image(fz_context *ctx, fz_pool *pool, fz_html_box *top, fz_html_box *inline_box, fz_image *img)
{
 fz_html_flow *flow = add_flow(ctx, pool, top, inline_box, FLOW_IMAGE, 0);
 flow->content.image = fz_keep_image(ctx, img);
}
