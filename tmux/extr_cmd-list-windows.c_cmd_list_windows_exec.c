
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 scalar_t__ args_has (struct args*,char) ;
 int cmd_list_windows_server (struct cmd*,struct cmdq_item*) ;
 int cmd_list_windows_session (struct cmd*,int ,struct cmdq_item*,int ) ;

__attribute__((used)) static enum cmd_retval
cmd_list_windows_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;

 if (args_has(args, 'a'))
  cmd_list_windows_server(self, item);
 else
  cmd_list_windows_session(self, item->target.s, item, 0);

 return (CMD_RETURN_NORMAL);
}
