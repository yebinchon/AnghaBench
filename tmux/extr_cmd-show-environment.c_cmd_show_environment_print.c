
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ_entry {int name; int * value; } ;
struct cmdq_item {int dummy; } ;
struct cmd {int args; } ;


 int args_has (int ,char) ;
 char* cmd_show_environment_escape (struct environ_entry*) ;
 int cmdq_print (struct cmdq_item*,char*,int ,...) ;
 int free (char*) ;

__attribute__((used)) static void
cmd_show_environment_print(struct cmd *self, struct cmdq_item *item,
    struct environ_entry *envent)
{
 char *escaped;

 if (!args_has(self->args, 's')) {
  if (envent->value != ((void*)0))
   cmdq_print(item, "%s=%s", envent->name, envent->value);
  else
   cmdq_print(item, "-%s", envent->name);
  return;
 }

 if (envent->value != ((void*)0)) {
  escaped = cmd_show_environment_escape(envent);
  cmdq_print(item, "%s=\"%s\"; export %s;", envent->name, escaped,
      envent->name);
  free(escaped);
 } else
  cmdq_print(item, "unset %s;", envent->name);
}
