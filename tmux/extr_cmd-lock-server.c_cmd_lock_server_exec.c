
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {int * entry; struct args* args; } ;
struct client {int dummy; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int args_get (struct args*,char) ;
 struct client* cmd_find_client (struct cmdq_item*,int ,int ) ;
 int cmd_lock_server_entry ;
 int cmd_lock_session_entry ;
 int recalculate_sizes () ;
 int server_lock () ;
 int server_lock_client (struct client*) ;
 int server_lock_session (int ) ;

__attribute__((used)) static enum cmd_retval
cmd_lock_server_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct client *c;

 if (self->entry == &cmd_lock_server_entry)
  server_lock();
 else if (self->entry == &cmd_lock_session_entry)
  server_lock_session(item->target.s);
 else {
  if ((c = cmd_find_client(item, args_get(args, 't'), 0)) == ((void*)0))
   return (CMD_RETURN_ERROR);
  server_lock_client(c);
 }
 recalculate_sizes();

 return (CMD_RETURN_NORMAL);
}
