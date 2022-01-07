
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_link ;
struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* down; scalar_t__ flow_head; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 int * load_link_flow (int *,scalar_t__,int *,int,float,char const*,char const*) ;

__attribute__((used)) static fz_link *load_link_box(fz_context *ctx, fz_html_box *box, fz_link *head, int page, float page_h, const char *dir, const char *file)
{
 while (box)
 {
  if (box->flow_head)
   head = load_link_flow(ctx, box->flow_head, head, page, page_h, dir, file);
  if (box->down)
   head = load_link_box(ctx, box->down, head, page, page_h, dir, file);
  box = box->next;
 }
 return head;
}
