
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_mode_entry {int prefix; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int jumptype; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_NOTHING ;




 int window_copy_cursor_jump (struct window_mode_entry*) ;
 int window_copy_cursor_jump_back (struct window_mode_entry*) ;
 int window_copy_cursor_jump_to (struct window_mode_entry*) ;
 int window_copy_cursor_jump_to_back (struct window_mode_entry*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_jump_again(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct window_copy_mode_data *data = wme->data;
 u_int np = wme->prefix;

 switch (data->jumptype) {
 case 130:
  for (; np != 0; np--)
   window_copy_cursor_jump(wme);
  break;
 case 131:
  for (; np != 0; np--)
   window_copy_cursor_jump_back(wme);
  break;
 case 128:
  for (; np != 0; np--)
   window_copy_cursor_jump_to(wme);
  break;
 case 129:
  for (; np != 0; np--)
   window_copy_cursor_jump_to_back(wme);
  break;
 }
 return (WINDOW_COPY_CMD_NOTHING);
}
