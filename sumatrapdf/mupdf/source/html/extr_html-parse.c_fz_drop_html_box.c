
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* down; int flow_head; struct TYPE_3__* next; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 int fz_drop_html_flow (int *,int ) ;

__attribute__((used)) static void fz_drop_html_box(fz_context *ctx, fz_html_box *box)
{
 while (box)
 {
  fz_html_box *next = box->next;
  fz_drop_html_flow(ctx, box->flow_head);
  fz_drop_html_box(ctx, box->down);
  box = next;
 }
}
