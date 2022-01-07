
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct genstate {int at_bol; int pool; int styles; } ;
struct TYPE_7__ {scalar_t__ type; int is_first_flow; int style; struct TYPE_7__* next; struct TYPE_7__* up; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_css_style ;
typedef int fz_context ;


 scalar_t__ BOX_BLOCK ;
 scalar_t__ BOX_FLOW ;
 scalar_t__ BOX_INLINE ;
 scalar_t__ BOX_TABLE_CELL ;
 int fz_css_enlist (int *,int *,int *,int ) ;
 int fz_default_css_style (int *,int *) ;
 int insert_box (int *,TYPE_1__*,scalar_t__,TYPE_1__*) ;
 TYPE_1__* new_short_box (int *,int ,int) ;

__attribute__((used)) static void insert_inline_box(fz_context *ctx, fz_html_box *box, fz_html_box *top, int markup_dir, struct genstate *g)
{
 if (top->type == BOX_FLOW || top->type == BOX_INLINE)
 {
  insert_box(ctx, box, BOX_INLINE, top);
 }
 else
 {
  while (top->type != BOX_BLOCK && top->type != BOX_TABLE_CELL)
   top = top->up;


  if (top->next && top->next->type == BOX_FLOW)
  {
   insert_box(ctx, box, BOX_INLINE, top->next);
  }
  else
  {
   fz_css_style style;
   fz_html_box *flow = new_short_box(ctx, g->pool, markup_dir);
   flow->is_first_flow = !top->next;
   fz_default_css_style(ctx, &style);
   flow->style = fz_css_enlist(ctx, &style, &g->styles, g->pool);
   insert_box(ctx, flow, BOX_FLOW, top);
   insert_box(ctx, box, BOX_INLINE, flow);
   g->at_bol = 1;
  }
 }
}
