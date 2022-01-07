
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {int dummy; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 scalar_t__ args_has (struct args*,char) ;
 int cmd_list_panes_server (struct cmd*,struct cmdq_item*) ;
 int cmd_list_panes_session (struct cmd*,struct session*,struct cmdq_item*,int) ;
 int cmd_list_panes_window (struct cmd*,struct session*,struct winlink*,struct cmdq_item*,int ) ;

__attribute__((used)) static enum cmd_retval
cmd_list_panes_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct session *s = item->target.s;
 struct winlink *wl = item->target.wl;

 if (args_has(args, 'a'))
  cmd_list_panes_server(self, item);
 else if (args_has(args, 's'))
  cmd_list_panes_session(self, s, item, 1);
 else
  cmd_list_panes_window(self, s, wl, item, 0);

 return (CMD_RETURN_NORMAL);
}
