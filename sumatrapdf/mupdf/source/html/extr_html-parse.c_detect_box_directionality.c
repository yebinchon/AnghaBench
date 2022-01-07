
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uni_buf ;
typedef int fz_pool ;
struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* down; scalar_t__ flow_head; int markup_dir; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 int detect_flow_directionality (int *,int *,int *,int ,scalar_t__) ;

__attribute__((used)) static void
detect_box_directionality(fz_context *ctx, fz_pool *pool, uni_buf *buffer, fz_html_box *box)
{
 while (box)
 {
  if (box->flow_head)
   box->markup_dir = detect_flow_directionality(ctx, pool, buffer, box->markup_dir, box->flow_head);
  detect_box_directionality(ctx, pool, buffer, box->down);
  box = box->next;
 }
}
