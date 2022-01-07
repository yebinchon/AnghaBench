
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {TYPE_1__* layout_cell; struct window* window; } ;
struct window {int dummy; } ;
struct layout_cell {struct layout_cell* parent; } ;
struct TYPE_2__ {struct layout_cell* parent; } ;


 int layout_fix_offsets (struct window*) ;
 int layout_fix_panes (struct window*) ;
 scalar_t__ layout_spread_cell (struct window*,struct layout_cell*) ;

void
layout_spread_out(struct window_pane *wp)
{
 struct layout_cell *parent;
 struct window *w = wp->window;

 parent = wp->layout_cell->parent;
 if (parent == ((void*)0))
  return;

 do {
  if (layout_spread_cell(w, parent)) {
   layout_fix_offsets(w);
   layout_fix_panes(w);
   break;
  }
 } while ((parent = parent->parent) != ((void*)0));
}
