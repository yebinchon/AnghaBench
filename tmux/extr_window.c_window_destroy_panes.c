
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct window {int panes; } ;


 int TAILQ_EMPTY (int *) ;
 struct window_pane* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct window_pane*,int ) ;
 int entry ;
 int window_pane_destroy (struct window_pane*) ;

void
window_destroy_panes(struct window *w)
{
 struct window_pane *wp;

 while (!TAILQ_EMPTY(&w->panes)) {
  wp = TAILQ_FIRST(&w->panes);
  TAILQ_REMOVE(&w->panes, wp, entry);
  window_pane_destroy(wp);
 }
}
