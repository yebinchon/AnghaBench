
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {struct layout_cell* layout_cell; } ;
struct layout_cell {int type; int sx; int sy; int cells; struct layout_cell* parent; } ;
typedef enum layout_type { ____Placeholder_layout_type } layout_type ;


 int LAYOUT_LEFTRIGHT ;
 struct layout_cell* TAILQ_LAST (int *,int ) ;
 int layout_cells ;
 int layout_resize_pane (struct window_pane*,int,int,int) ;

void
layout_resize_pane_to(struct window_pane *wp, enum layout_type type,
    u_int new_size)
{
 struct layout_cell *lc, *lcparent;
 int change, size;

 lc = wp->layout_cell;


 lcparent = lc->parent;
 while (lcparent != ((void*)0) && lcparent->type != type) {
  lc = lcparent;
  lcparent = lc->parent;
 }
 if (lcparent == ((void*)0))
  return;


 if (type == LAYOUT_LEFTRIGHT)
  size = lc->sx;
 else
  size = lc->sy;
 if (lc == TAILQ_LAST(&lcparent->cells, layout_cells))
  change = size - new_size;
 else
  change = new_size - size;


 layout_resize_pane(wp, type, change, 1);
}
