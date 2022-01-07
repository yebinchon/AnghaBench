
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int hb_buffer_t ;
typedef int fz_matrix ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_device ;
typedef int fz_context ;







 int draw_block_box (int *,TYPE_1__*,float,float,int *,int ,int *) ;
 int draw_flow_box (int *,TYPE_1__*,float,float,int *,int ,int *) ;

__attribute__((used)) static void draw_box(fz_context *ctx, fz_html_box *box, float page_top, float page_bot, fz_device *dev, fz_matrix ctm, hb_buffer_t *hb_buf)
{
 switch (box->type)
 {
 case 130:
 case 128:
 case 129:
 case 132:
  draw_block_box(ctx, box, page_top, page_bot, dev, ctm, hb_buf);
  break;
 case 131:
  draw_flow_box(ctx, box, page_top, page_bot, dev, ctm, hb_buf);
  break;
 }
}
