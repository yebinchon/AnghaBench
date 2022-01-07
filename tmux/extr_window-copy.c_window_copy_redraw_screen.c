
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int screen; } ;


 int screen_size_y (int *) ;
 int window_copy_redraw_lines (struct window_mode_entry*,int ,int ) ;

__attribute__((used)) static void
window_copy_redraw_screen(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;

 window_copy_redraw_lines(wme, 0, screen_size_y(&data->screen));
}
