
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct window_pane {TYPE_1__* window; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; struct screen* backing; } ;
struct screen {int dummy; } ;
struct options {int dummy; } ;
struct TYPE_2__ {struct options* options; } ;


 int MODEKEY_VI ;
 int options_get_number (struct options*,char*) ;
 scalar_t__ screen_hsize (struct screen*) ;
 scalar_t__ screen_size_y (struct screen*) ;
 int window_copy_cursor_down (struct window_mode_entry*,int ) ;
 scalar_t__ window_copy_find_length (struct window_mode_entry*,scalar_t__) ;
 int window_copy_in_set (struct window_mode_entry*,scalar_t__,scalar_t__,char const*) ;
 int window_copy_redraw_lines (struct window_mode_entry*,scalar_t__,int) ;
 int window_copy_update_cursor (struct window_mode_entry*,scalar_t__,scalar_t__) ;
 scalar_t__ window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_cursor_next_word_end(struct window_mode_entry *wme,
    const char *separators)
{
 struct window_pane *wp = wme->wp;
 struct window_copy_mode_data *data = wme->data;
 struct options *oo = wp->window->options;
 struct screen *back_s = data->backing;
 u_int px, py, xx, yy;
 int keys, expected = 1;

 px = data->cx;
 py = screen_hsize(back_s) + data->cy - data->oy;
 xx = window_copy_find_length(wme, py);
 yy = screen_hsize(back_s) + screen_size_y(back_s) - 1;

 keys = options_get_number(oo, "mode-keys");
 if (keys == MODEKEY_VI && !window_copy_in_set(wme, px, py, separators))
  px++;







 do {
  while (px > xx ||
      window_copy_in_set(wme, px, py, separators) == expected) {

   if (px > xx) {
    if (py == yy)
     return;
    window_copy_cursor_down(wme, 0);
    px = 0;

    py = screen_hsize(back_s) + data->cy - data->oy;
    xx = window_copy_find_length(wme, py);
   } else
    px++;
  }
  expected = !expected;
 } while (expected == 0);

 if (keys == MODEKEY_VI && px != 0)
  px--;

 window_copy_update_cursor(wme, px, data->cy);
 if (window_copy_update_selection(wme, 1))
  window_copy_redraw_lines(wme, data->cy, 1);
}
