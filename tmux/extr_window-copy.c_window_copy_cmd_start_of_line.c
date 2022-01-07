
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {int dummy; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_NOTHING ;
 int window_copy_cursor_start_of_line (struct window_mode_entry*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_start_of_line(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;

 window_copy_cursor_start_of_line(wme);
 return (WINDOW_COPY_CMD_NOTHING);
}
