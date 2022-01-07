
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ cx; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_REDRAW ;
 int window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_top_line(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct window_copy_mode_data *data = wme->data;

 data->cx = 0;
 data->cy = 0;

 window_copy_update_selection(wme, 1);
 return (WINDOW_COPY_CMD_REDRAW);
}
