
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {struct window* window; } ;
struct window {int dummy; } ;


 int layout_close_pane (struct window_pane*) ;
 int recalculate_sizes () ;
 int server_kill_window (struct window*) ;
 int server_redraw_window (struct window*) ;
 int server_unzoom_window (struct window*) ;
 int window_count_panes (struct window*) ;
 int window_remove_pane (struct window*,struct window_pane*) ;

void
server_kill_pane(struct window_pane *wp)
{
 struct window *w = wp->window;

 if (window_count_panes(w) == 1) {
  server_kill_window(w);
  recalculate_sizes();
 } else {
  server_unzoom_window(w);
  layout_close_pane(wp);
  window_remove_pane(w, wp);
  server_redraw_window(w);
 }
}
