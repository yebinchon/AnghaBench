
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int* palette; int flags; } ;


 int PANE_REDRAW ;
 int* xcalloc (int,int) ;

void
window_pane_set_palette(struct window_pane *wp, u_int n, int colour)
{
 if (n > 0xff)
  return;

 if (wp->palette == ((void*)0))
  wp->palette = xcalloc(0x100, sizeof *wp->palette);

 wp->palette[n] = colour;
 wp->flags |= PANE_REDRAW;
}
