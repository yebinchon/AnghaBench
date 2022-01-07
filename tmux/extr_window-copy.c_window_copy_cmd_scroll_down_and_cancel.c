
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ oy; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_CANCEL ;
 int WINDOW_COPY_CMD_NOTHING ;
 int window_copy_cursor_down (struct window_mode_entry*,int) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_scroll_down_and_cancel(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct window_copy_mode_data *data = wme->data;
 u_int np = wme->prefix;

 for (; np != 0; np--)
  window_copy_cursor_down(wme, 1);
 if (data->oy == 0)
  return (WINDOW_COPY_CMD_CANCEL);
 return (WINDOW_COPY_CMD_NOTHING);
}
