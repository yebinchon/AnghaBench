
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct window {int panes; } ;


 int TAILQ_REMOVE (int *,struct window_pane*,int ) ;
 int entry ;
 int window_lost_pane (struct window*,struct window_pane*) ;
 int window_pane_destroy (struct window_pane*) ;

void
window_remove_pane(struct window *w, struct window_pane *wp)
{
 window_lost_pane(w, wp);

 TAILQ_REMOVE(&w->panes, wp, entry);
 window_pane_destroy(wp);
}
