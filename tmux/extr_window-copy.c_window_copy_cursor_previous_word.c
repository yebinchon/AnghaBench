
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; int backing; } ;


 int screen_hsize (int ) ;
 int window_copy_cursor_up (struct window_mode_entry*,int ) ;
 scalar_t__ window_copy_find_length (struct window_mode_entry*,scalar_t__) ;
 scalar_t__ window_copy_in_set (struct window_mode_entry*,scalar_t__,scalar_t__,char const*) ;
 int window_copy_redraw_lines (struct window_mode_entry*,scalar_t__,int) ;
 int window_copy_update_cursor (struct window_mode_entry*,scalar_t__,scalar_t__) ;
 scalar_t__ window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_cursor_previous_word(struct window_mode_entry *wme,
    const char *separators, int already)
{
 struct window_copy_mode_data *data = wme->data;
 u_int px, py;

 px = data->cx;
 py = screen_hsize(data->backing) + data->cy - data->oy;


 if (already || window_copy_in_set(wme, px, py, separators)) {
  for (;;) {
   if (px > 0) {
    px--;
    if (!window_copy_in_set(wme, px, py, separators))
     break;
   } else {
    if (data->cy == 0 &&
        (screen_hsize(data->backing) == 0 ||
        data->oy >= screen_hsize(data->backing) - 1))
     goto out;
    window_copy_cursor_up(wme, 0);

    py = screen_hsize(data->backing) + data->cy - data->oy;
    px = window_copy_find_length(wme, py);


    if (px > 0 &&
        window_copy_in_set(wme, px - 1, py, separators))
     break;
   }
  }
 }


 while (px > 0 && !window_copy_in_set(wme, px - 1, py, separators))
  px--;

out:
 window_copy_update_cursor(wme, px, data->cy);
 if (window_copy_update_selection(wme, 1))
  window_copy_redraw_lines(wme, data->cy, 1);
}
