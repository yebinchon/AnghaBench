
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; double em; double x; double y; double w; double b; double* margin; int list_item; char* id; char* href; struct TYPE_3__* next; scalar_t__ flow_head; struct TYPE_3__* down; scalar_t__ is_first_flow; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;
 int fz_debug_html_flow (int *,scalar_t__,int) ;
 int indent (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
fz_debug_html_box(fz_context *ctx, fz_html_box *box, int level)
{
 while (box)
 {
  indent(level);
  switch (box->type) {
  case 134: printf("block"); break;
  case 133: printf("break"); break;
  case 132: printf("flow"); break;
  case 131: printf("inline"); break;
  case 130: printf("table"); break;
  case 128: printf("table-row"); break;
  case 129: printf("table-cell"); break;
  }

  printf(" em=%g x=%g y=%g w=%g b=%g\n", box->em, box->x, box->y, box->w, box->b);

  indent(level);
  printf("{\n");
  if (box->type == 134) {
   indent(level+1);
   printf("margin=%g %g %g %g\n", box->margin[0], box->margin[1], box->margin[2], box->margin[3]);
  }
  if (box->is_first_flow) {
   indent(level+1);
   printf("is-first-flow\n");
  }
  if (box->list_item) {
   indent(level+1);
   printf("list=%d\n", box->list_item);
  }
  if (box->id) {
   indent(level+1);
   printf("id=%s\n", box->id);
  }
  if (box->href) {
   indent(level+1);
   printf("href=%s\n", box->href);
  }

  if (box->down)
   fz_debug_html_box(ctx, box->down, level + 1);
  if (box->flow_head)
   fz_debug_html_flow(ctx, box->flow_head, level + 1);

  indent(level);
  printf("}\n");

  box = box->next;
 }
}
