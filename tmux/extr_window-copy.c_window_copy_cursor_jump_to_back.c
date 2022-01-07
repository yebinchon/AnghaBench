
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; scalar_t__ jumpchar; struct screen* backing; } ;
struct screen {int grid; } ;
struct TYPE_2__ {int size; scalar_t__* data; } ;
struct grid_cell {int flags; TYPE_1__ data; } ;


 int GRID_FLAG_PADDING ;
 int grid_get_cell (int ,scalar_t__,scalar_t__,struct grid_cell*) ;
 scalar_t__ screen_hsize (struct screen*) ;
 int window_copy_redraw_lines (struct window_mode_entry*,scalar_t__,int) ;
 int window_copy_update_cursor (struct window_mode_entry*,scalar_t__,scalar_t__) ;
 scalar_t__ window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_cursor_jump_to_back(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;
 struct screen *back_s = data->backing;
 struct grid_cell gc;
 u_int px, py;

 px = data->cx;
 py = screen_hsize(back_s) + data->cy - data->oy;

 if (px > 0)
  px--;

 if (px > 0)
  px--;

 for (;;) {
  grid_get_cell(back_s->grid, px, py, &gc);
  if (!(gc.flags & GRID_FLAG_PADDING) &&
      gc.data.size == 1 && *gc.data.data == data->jumpchar) {
   window_copy_update_cursor(wme, px + 1, data->cy);
   if (window_copy_update_selection(wme, 1))
    window_copy_redraw_lines(wme, data->cy, 1);
   return;
  }
  if (px == 0)
   break;
  px--;
 }
}
