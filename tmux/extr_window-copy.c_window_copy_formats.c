
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct TYPE_2__ {int grid; int * sel; } ;
struct window_copy_mode_data {char* oy; char* rectflag; char* cx; char* cy; char* selx; char* sely; char* endselx; char* endsely; TYPE_1__ screen; } ;
struct format_tree {int dummy; } ;


 int format_add (struct format_tree*,char*,char*,char*) ;
 char* format_grid_line (int ,char*) ;
 char* format_grid_word (int ,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static void
window_copy_formats(struct window_mode_entry *wme, struct format_tree *ft)
{
 struct window_copy_mode_data *data = wme->data;
 char *s;

 format_add(ft, "scroll_position", "%d", data->oy);
 format_add(ft, "rectangle_toggle", "%d", data->rectflag);

 format_add(ft, "copy_cursor_x", "%d", data->cx);
 format_add(ft, "copy_cursor_y", "%d", data->cy);

 format_add(ft, "selection_present", "%d", data->screen.sel != ((void*)0));
 if (data->screen.sel != ((void*)0)) {
  format_add(ft, "selection_start_x", "%d", data->selx);
  format_add(ft, "selection_start_y", "%d", data->sely);
  format_add(ft, "selection_end_x", "%d", data->endselx);
  format_add(ft, "selection_end_y", "%d", data->endsely);
 }

 s = format_grid_word(data->screen.grid, data->cx, data->cy);
 if (s != ((void*)0)) {
  format_add(ft, "copy_cursor_word", "%s", s);
  free(s);
 }

 s = format_grid_line(data->screen.grid, data->cy);
 if (s != ((void*)0)) {
  format_add(ft, "copy_cursor_line", "%s", s);
  free(s);
 }
}
