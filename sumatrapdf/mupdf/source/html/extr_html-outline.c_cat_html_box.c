
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* down; int flow_head; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;
typedef int fz_buffer ;


 int cat_html_flow (int *,int *,int ) ;

__attribute__((used)) static void
cat_html_box(fz_context *ctx, fz_buffer *cat, fz_html_box *box)
{
 while (box)
 {
  cat_html_flow(ctx, cat, box->flow_head);
  cat_html_box(ctx, cat, box->down);
  box = box->next;
 }
}
