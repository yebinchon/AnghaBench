
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int flags; scalar_t__* palette; } ;


 int PANE_REDRAW ;

void
window_pane_unset_palette(struct window_pane *wp, u_int n)
{
 if (n > 0xff || wp->palette == ((void*)0))
  return;

 wp->palette[n] = 0;
 wp->flags |= PANE_REDRAW;
}
