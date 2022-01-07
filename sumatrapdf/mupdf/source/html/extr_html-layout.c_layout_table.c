
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hb_buffer_t ;
struct TYPE_9__ {int em; int w; scalar_t__ y; scalar_t__ b; scalar_t__ type; scalar_t__ x; struct TYPE_9__* next; struct TYPE_9__* down; TYPE_1__* style; } ;
typedef TYPE_2__ fz_html_box ;
typedef int fz_context ;
struct TYPE_8__ {int font_size; int width; } ;


 scalar_t__ BOX_BLOCK ;
 scalar_t__ BOX_FLOW ;
 void* fz_from_css_number (int ,int,int,int) ;
 int layout_block (int *,TYPE_2__*,int,scalar_t__,scalar_t__*,float,float,int ,int *) ;
 int layout_flow (int *,TYPE_2__*,TYPE_2__*,float,int *) ;

__attribute__((used)) static void layout_table(fz_context *ctx, fz_html_box *box, fz_html_box *top, float page_h, hb_buffer_t *hb_buf)
{
 fz_html_box *row, *cell, *child;
 int col, ncol = 0;

 box->em = fz_from_css_number(box->style->font_size, top->em, top->em, top->em);
 box->x = top->x;
 box->w = fz_from_css_number(box->style->width, box->em, top->w, top->w);
 box->y = box->b = top->b;

 for (row = box->down; row; row = row->next)
 {
  col = 0;
  for (cell = row->down; cell; cell = cell->next)
   ++col;
  if (col > ncol)
   ncol = col;
 }

 for (row = box->down; row; row = row->next)
 {
  col = 0;

  row->em = fz_from_css_number(row->style->font_size, box->em, box->em, box->em);
  row->x = box->x;
  row->w = box->w;
  row->y = row->b = box->b;

  for (cell = row->down; cell; cell = cell->next)
  {
   float colw = row->w / ncol;

   cell->em = fz_from_css_number(cell->style->font_size, row->em, row->em, row->em);
   cell->y = cell->b = row->y;
   cell->x = row->x + col * colw;
   cell->w = colw;

   for (child = cell->down; child; child = child->next)
   {
    if (child->type == BOX_BLOCK)
     layout_block(ctx, child, cell->em, cell->x, &cell->b, cell->w, page_h, 0, hb_buf);
    else if (child->type == BOX_FLOW)
     layout_flow(ctx, child, cell, page_h, hb_buf);
    cell->b = child->b;
   }

   if (cell->b > row->b)
    row->b = cell->b;

   ++col;
  }

  box->b = row->b;
 }
}
