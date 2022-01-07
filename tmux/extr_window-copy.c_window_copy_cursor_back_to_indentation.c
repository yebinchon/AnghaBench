
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; TYPE_2__* backing; } ;
struct TYPE_3__ {int size; char* data; } ;
struct grid_cell {TYPE_1__ data; } ;
struct TYPE_4__ {int grid; } ;


 int grid_get_cell (int ,scalar_t__,scalar_t__,struct grid_cell*) ;
 scalar_t__ screen_hsize (TYPE_2__*) ;
 scalar_t__ window_copy_find_length (struct window_mode_entry*,scalar_t__) ;
 int window_copy_redraw_lines (struct window_mode_entry*,scalar_t__,int) ;
 int window_copy_update_cursor (struct window_mode_entry*,scalar_t__,scalar_t__) ;
 scalar_t__ window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_cursor_back_to_indentation(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;
 u_int px, py, xx;
 struct grid_cell gc;

 px = 0;
 py = screen_hsize(data->backing) + data->cy - data->oy;
 xx = window_copy_find_length(wme, py);

 while (px < xx) {
  grid_get_cell(data->backing->grid, px, py, &gc);
  if (gc.data.size != 1 || *gc.data.data != ' ')
   break;
  px++;
 }

 window_copy_update_cursor(wme, px, data->cy);
 if (window_copy_update_selection(wme, 1))
  window_copy_redraw_lines(wme, data->cy, 1);
}
