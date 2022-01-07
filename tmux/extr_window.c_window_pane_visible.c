
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {TYPE_1__* window; } ;
struct TYPE_2__ {int flags; struct window_pane* active; } ;


 int WINDOW_ZOOMED ;

int
window_pane_visible(struct window_pane *wp)
{
 if (~wp->window->flags & WINDOW_ZOOMED)
  return (1);
 return (wp == wp->window->active);
}
