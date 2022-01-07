
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int args_get (struct args*,char) ;
 int args_has (struct args*,char) ;
 int cmd_attach_session (struct cmdq_item*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static enum cmd_retval
cmd_attach_session_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;

 return (cmd_attach_session(item, args_get(args, 't'),
     args_has(args, 'd'), args_has(args, 'x'), args_has(args, 'r'),
     args_get(args, 'c'), args_has(args, 'E')));
}
