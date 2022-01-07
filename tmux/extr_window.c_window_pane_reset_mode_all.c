
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int modes; } ;


 int TAILQ_EMPTY (int *) ;
 int window_pane_reset_mode (struct window_pane*) ;

void
window_pane_reset_mode_all(struct window_pane *wp)
{
 while (!TAILQ_EMPTY(&wp->modes))
  window_pane_reset_mode(wp);
}
