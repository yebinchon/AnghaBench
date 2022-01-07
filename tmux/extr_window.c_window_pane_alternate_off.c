
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct screen {int cx; int cy; TYPE_1__* grid; } ;
struct window_pane {scalar_t__ saved_cx; scalar_t__ saved_cy; int flags; TYPE_2__* saved_grid; struct screen base; int saved_cell; int options; } ;
struct grid_cell {int dummy; } ;
struct TYPE_5__ {int sy; int sx; } ;
struct TYPE_4__ {int flags; } ;


 int GRID_HISTORY ;
 int PANE_REDRAW ;
 scalar_t__ UINT_MAX ;
 int grid_destroy (TYPE_2__*) ;
 int grid_duplicate_lines (TYPE_1__*,int ,TYPE_2__*,int ,int) ;
 int memcpy (struct grid_cell*,int *,int) ;
 int options_get_number (int ,char*) ;
 int screen_hsize (struct screen*) ;
 int screen_resize (struct screen*,int,int,int) ;
 int screen_size_x (struct screen*) ;
 int screen_size_y (struct screen*) ;

void
window_pane_alternate_off(struct window_pane *wp, struct grid_cell *gc,
    int cursor)
{
 struct screen *s = &wp->base;
 u_int sx, sy;

 if (!options_get_number(wp->options, "alternate-screen"))
  return;





 if (cursor && wp->saved_cx != UINT_MAX && wp->saved_cy != UINT_MAX) {
  s->cx = wp->saved_cx;
  if (s->cx > screen_size_x(s) - 1)
   s->cx = screen_size_x(s) - 1;
  s->cy = wp->saved_cy;
  if (s->cy > screen_size_y(s) - 1)
   s->cy = screen_size_y(s) - 1;
  memcpy(gc, &wp->saved_cell, sizeof *gc);
 }

 if (wp->saved_grid == ((void*)0))
  return;
 sx = screen_size_x(s);
 sy = screen_size_y(s);





 if (sy > wp->saved_grid->sy)
  screen_resize(s, sx, wp->saved_grid->sy, 1);


 grid_duplicate_lines(s->grid, screen_hsize(s), wp->saved_grid, 0, sy);





 wp->base.grid->flags |= GRID_HISTORY;
 if (sy > wp->saved_grid->sy || sx != wp->saved_grid->sx)
  screen_resize(s, sx, sy, 1);

 grid_destroy(wp->saved_grid);
 wp->saved_grid = ((void*)0);

 wp->flags |= PANE_REDRAW;
}
