
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct outline_parser {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* down; scalar_t__ heading; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 int add_html_outline (int *,struct outline_parser*,TYPE_1__*) ;

__attribute__((used)) static void
load_html_outline(fz_context *ctx, struct outline_parser *x, fz_html_box *box)
{
 while (box)
 {
  if (box->heading)
   add_html_outline(ctx, x, box);
  if (box->down)
   load_html_outline(ctx, x, box->down);
  box = box->next;
 }
}
