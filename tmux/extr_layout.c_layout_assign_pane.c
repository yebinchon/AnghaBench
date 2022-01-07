
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int window; } ;
struct layout_cell {int dummy; } ;


 int layout_fix_panes (int ) ;
 int layout_make_leaf (struct layout_cell*,struct window_pane*) ;

void
layout_assign_pane(struct layout_cell *lc, struct window_pane *wp)
{
 layout_make_leaf(lc, wp);
 layout_fix_panes(wp->window);
}
