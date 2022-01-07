
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int oy; int backing; } ;


 int INT_MAX ;
 int screen_hsize (int ) ;
 int strtonum (char const*,int,int ,char const**) ;
 int window_copy_redraw_screen (struct window_mode_entry*) ;
 int window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_goto_line(struct window_mode_entry *wme, const char *linestr)
{
 struct window_copy_mode_data *data = wme->data;
 const char *errstr;
 int lineno;

 lineno = strtonum(linestr, -1, INT_MAX, &errstr);
 if (errstr != ((void*)0))
  return;
 if (lineno < 0 || (u_int)lineno > screen_hsize(data->backing))
  lineno = screen_hsize(data->backing);

 data->oy = lineno;
 window_copy_update_selection(wme, 1);
 window_copy_redraw_screen(wme);
}
