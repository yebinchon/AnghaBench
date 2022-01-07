
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct screen {TYPE_1__* grid; int cy; int cx; } ;
struct window_pane {int flags; struct screen base; int saved_cell; int saved_cy; int saved_cx; int * saved_grid; int options; } ;
struct grid_cell {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int GRID_HISTORY ;
 int PANE_REDRAW ;
 int * grid_create (int ,int ,int ) ;
 int grid_duplicate_lines (int *,int ,TYPE_1__*,int ,int ) ;
 int grid_view_clear (TYPE_1__*,int ,int ,int ,int ,int) ;
 int memcpy (int *,struct grid_cell*,int) ;
 int options_get_number (int ,char*) ;
 int screen_hsize (struct screen*) ;
 int screen_size_x (struct screen*) ;
 int screen_size_y (struct screen*) ;

void
window_pane_alternate_on(struct window_pane *wp, struct grid_cell *gc,
    int cursor)
{
 struct screen *s = &wp->base;
 u_int sx, sy;

 if (wp->saved_grid != ((void*)0))
  return;
 if (!options_get_number(wp->options, "alternate-screen"))
  return;
 sx = screen_size_x(s);
 sy = screen_size_y(s);

 wp->saved_grid = grid_create(sx, sy, 0);
 grid_duplicate_lines(wp->saved_grid, 0, s->grid, screen_hsize(s), sy);
 if (cursor) {
  wp->saved_cx = s->cx;
  wp->saved_cy = s->cy;
 }
 memcpy(&wp->saved_cell, gc, sizeof wp->saved_cell);

 grid_view_clear(s->grid, 0, 0, sx, sy, 8);

 wp->base.grid->flags &= ~GRID_HISTORY;

 wp->flags |= PANE_REDRAW;
}
