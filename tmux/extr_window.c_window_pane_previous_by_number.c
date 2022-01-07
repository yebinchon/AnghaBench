
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int dummy; } ;
struct window {int panes; } ;


 struct window_pane* TAILQ_LAST (int *,int ) ;
 struct window_pane* TAILQ_PREV (struct window_pane*,int ,int ) ;
 int entry ;
 int window_panes ;

struct window_pane *
window_pane_previous_by_number(struct window *w, struct window_pane *wp,
    u_int n)
{
 for (; n > 0; n--) {
  if ((wp = TAILQ_PREV(wp, window_panes, entry)) == ((void*)0))
   wp = TAILQ_LAST(&w->panes, window_panes);
 }

 return (wp);
}
