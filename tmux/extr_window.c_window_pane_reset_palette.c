
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int flags; int * palette; } ;


 int PANE_REDRAW ;
 int free (int *) ;

void
window_pane_reset_palette(struct window_pane *wp)
{
 if (wp->palette == ((void*)0))
  return;

 free(wp->palette);
 wp->palette = ((void*)0);
 wp->flags |= PANE_REDRAW;
}
