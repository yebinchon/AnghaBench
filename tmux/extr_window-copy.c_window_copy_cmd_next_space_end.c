
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_NOTHING ;
 int window_copy_cursor_next_word_end (struct window_mode_entry*,char*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_next_space_end(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 u_int np = wme->prefix;

 for (; np != 0; np--)
  window_copy_cursor_next_word_end(wme, " ");
 return (WINDOW_COPY_CMD_NOTHING);
}
