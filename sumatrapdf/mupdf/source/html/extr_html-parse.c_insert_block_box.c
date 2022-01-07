
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* up; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 scalar_t__ BOX_BLOCK ;
 scalar_t__ BOX_FLOW ;
 scalar_t__ BOX_INLINE ;
 int insert_box (int *,TYPE_1__*,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static fz_html_box *insert_block_box(fz_context *ctx, fz_html_box *box, fz_html_box *top)
{
 if (top->type == BOX_BLOCK)
 {
  insert_box(ctx, box, BOX_BLOCK, top);
 }
 else if (top->type == BOX_FLOW)
 {
  while (top->type != BOX_BLOCK)
   top = top->up;
  insert_box(ctx, box, BOX_BLOCK, top);
 }
 else if (top->type == BOX_INLINE)
 {
  while (top->type != BOX_BLOCK)
   top = top->up;
  insert_box(ctx, box, BOX_BLOCK, top);
 }
 return top;
}
