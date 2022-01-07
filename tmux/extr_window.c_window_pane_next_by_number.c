
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int dummy; } ;
struct window {int panes; } ;


 struct window_pane* TAILQ_FIRST (int *) ;
 struct window_pane* TAILQ_NEXT (struct window_pane*,int ) ;
 int entry ;

struct window_pane *
window_pane_next_by_number(struct window *w, struct window_pane *wp, u_int n)
{
 for (; n > 0; n--) {
  if ((wp = TAILQ_NEXT(wp, entry)) == ((void*)0))
   wp = TAILQ_FIRST(&w->panes);
 }

 return (wp);
}
