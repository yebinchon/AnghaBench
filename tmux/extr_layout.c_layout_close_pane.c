
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int layout_cell; struct window* window; } ;
struct window {int * layout_root; } ;


 int layout_destroy_cell (struct window*,int ,int **) ;
 int layout_fix_offsets (struct window*) ;
 int layout_fix_panes (struct window*) ;
 int notify_window (char*,struct window*) ;

void
layout_close_pane(struct window_pane *wp)
{
 struct window *w = wp->window;


 layout_destroy_cell(w, wp->layout_cell, &w->layout_root);


 if (w->layout_root != ((void*)0)) {
  layout_fix_offsets(w);
  layout_fix_panes(w);
 }
 notify_window("window-layout-changed", w);
}
