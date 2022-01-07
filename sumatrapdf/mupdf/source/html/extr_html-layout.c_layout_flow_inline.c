
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* down; int em; TYPE_1__* style; int y; } ;
typedef TYPE_2__ fz_html_box ;
typedef int fz_context ;
struct TYPE_5__ {int font_size; } ;


 int fz_from_css_number (int ,int ,int ,int ) ;

__attribute__((used)) static void layout_flow_inline(fz_context *ctx, fz_html_box *box, fz_html_box *top)
{
 while (box)
 {
  box->y = top->y;
  box->em = fz_from_css_number(box->style->font_size, top->em, top->em, top->em);
  if (box->down)
   layout_flow_inline(ctx, box->down, box);
  box = box->next;
 }
}
