
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {int dummy; } ;
struct window_mode {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {int * entry; struct args* args; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 int cmd_choose_buffer_entry ;
 int cmd_choose_client_entry ;
 int * paste_get_top (int *) ;
 scalar_t__ server_client_how_many () ;
 struct window_mode window_buffer_mode ;
 struct window_mode window_client_mode ;
 int window_pane_set_mode (struct window_pane*,struct window_mode const*,TYPE_1__*,struct args*) ;
 struct window_mode window_tree_mode ;

__attribute__((used)) static enum cmd_retval
cmd_choose_tree_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct window_pane *wp = item->target.wp;
 const struct window_mode *mode;

 if (self->entry == &cmd_choose_buffer_entry) {
  if (paste_get_top(((void*)0)) == ((void*)0))
   return (CMD_RETURN_NORMAL);
  mode = &window_buffer_mode;
 } else if (self->entry == &cmd_choose_client_entry) {
  if (server_client_how_many() == 0)
   return (CMD_RETURN_NORMAL);
  mode = &window_client_mode;
 } else
  mode = &window_tree_mode;

 window_pane_set_mode(wp, mode, &item->target, args);
 return (CMD_RETURN_NORMAL);
}
