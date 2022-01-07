
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; scalar_t__ lineflag; scalar_t__ sely; int backing; scalar_t__ cx; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 scalar_t__ LINE_SEL_LEFT_RIGHT ;
 int WINDOW_COPY_CMD_REDRAW ;
 scalar_t__ screen_hsize (int ) ;
 int window_copy_other_end (struct window_mode_entry*) ;
 int window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_history_top(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct window_copy_mode_data *data = wme->data;
 u_int oy;

 oy = screen_hsize(data->backing) + data->cy - data->oy;
 if (data->lineflag == LINE_SEL_LEFT_RIGHT && oy == data->sely)
  window_copy_other_end(wme);

 data->cy = 0;
 data->cx = 0;
 data->oy = screen_hsize(data->backing);

 window_copy_update_selection(wme, 1);
 return (WINDOW_COPY_CMD_REDRAW);
}
