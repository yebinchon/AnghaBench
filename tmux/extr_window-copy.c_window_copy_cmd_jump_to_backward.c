
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {char jumpchar; int jumptype; } ;
struct window_copy_cmd_state {TYPE_1__* args; struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;
struct TYPE_2__ {char** argv; } ;


 int WINDOW_COPY_CMD_NOTHING ;
 int WINDOW_COPY_JUMPTOBACKWARD ;
 int window_copy_cursor_jump_to_back (struct window_mode_entry*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_jump_to_backward(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct window_copy_mode_data *data = wme->data;
 u_int np = wme->prefix;
 const char *argument = cs->args->argv[1];

 if (*argument != '\0') {
  data->jumptype = WINDOW_COPY_JUMPTOBACKWARD;
  data->jumpchar = *argument;
  for (; np != 0; np--)
   window_copy_cursor_jump_to_back(wme);
 }
 return (WINDOW_COPY_CMD_NOTHING);
}
