
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {struct layout_cell* layout_root; } ;
struct layout_cell {scalar_t__ type; int cells; struct layout_cell* parent; } ;


 scalar_t__ LAYOUT_TOPBOTTOM ;
 struct layout_cell* TAILQ_LAST (int *,int ) ;
 int layout_cells ;

__attribute__((used)) static int
layout_cell_is_bottom(struct window *w, struct layout_cell *lc)
{
 struct layout_cell *next;

 while (lc != w->layout_root) {
  next = lc->parent;
  if (next->type == LAYOUT_TOPBOTTOM &&
      lc != TAILQ_LAST(&next->cells, layout_cells))
   return (0);
  lc = next;
 }
 return (1);
}
