
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int window; struct layout_cell* layout_cell; } ;
struct layout_cell {int type; int cells; struct layout_cell* parent; } ;
typedef enum layout_type { ____Placeholder_layout_type } layout_type ;


 struct layout_cell* TAILQ_LAST (int *,int ) ;
 struct layout_cell* TAILQ_PREV (struct layout_cell*,int ,int ) ;
 int entry ;
 int layout_cells ;
 int layout_resize_layout (int ,struct layout_cell*,int,int,int) ;

void
layout_resize_pane(struct window_pane *wp, enum layout_type type, int change,
    int opposite)
{
 struct layout_cell *lc, *lcparent;

 lc = wp->layout_cell;


 lcparent = lc->parent;
 while (lcparent != ((void*)0) && lcparent->type != type) {
  lc = lcparent;
  lcparent = lc->parent;
 }
 if (lcparent == ((void*)0))
  return;


 if (lc == TAILQ_LAST(&lcparent->cells, layout_cells))
  lc = TAILQ_PREV(lc, layout_cells, entry);

 layout_resize_layout(wp->window, lc, type, change, opposite);
}
