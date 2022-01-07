
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int rectflag; scalar_t__ cy; scalar_t__ oy; scalar_t__ cx; int backing; } ;


 scalar_t__ screen_hsize (int ) ;
 scalar_t__ window_copy_find_length (struct window_mode_entry*,scalar_t__) ;
 int window_copy_redraw_screen (struct window_mode_entry*) ;
 int window_copy_update_cursor (struct window_mode_entry*,scalar_t__,scalar_t__) ;
 int window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_rectangle_toggle(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;
 u_int px, py;

 data->rectflag = !data->rectflag;

 py = screen_hsize(data->backing) + data->cy - data->oy;
 px = window_copy_find_length(wme, py);
 if (data->cx > px)
  window_copy_update_cursor(wme, px, data->cy);

 window_copy_update_selection(wme, 1);
 window_copy_redraw_screen(wme);
}
