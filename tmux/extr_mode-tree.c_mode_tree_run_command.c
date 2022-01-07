
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; char* error; int cmdlist; } ;
struct cmd_find_state {int dummy; } ;
struct client {int dummy; } ;





 int cmd_list_free (int ) ;
 struct cmd_parse_result* cmd_parse_from_string (char*,int *) ;
 char* cmd_template_replace (char const*,char const*,int) ;
 int cmdq_append (struct client*,struct cmdq_item*) ;
 struct cmdq_item* cmdq_get_command (int ,struct cmd_find_state*,int *,int ) ;
 int free (char*) ;
 int status_message_set (struct client*,char*,char*) ;
 char toupper (int ) ;

void
mode_tree_run_command(struct client *c, struct cmd_find_state *fs,
    const char *template, const char *name)
{
 struct cmdq_item *new_item;
 char *command;
 struct cmd_parse_result *pr;

 command = cmd_template_replace(template, name, 1);
 if (command == ((void*)0) || *command == '\0') {
  free(command);
  return;
 }

 pr = cmd_parse_from_string(command, ((void*)0));
 switch (pr->status) {
 case 130:
  break;
 case 129:
  if (c != ((void*)0)) {
   *pr->error = toupper((u_char)*pr->error);
   status_message_set(c, "%s", pr->error);
  }
  free(pr->error);
  break;
 case 128:
  new_item = cmdq_get_command(pr->cmdlist, fs, ((void*)0), 0);
  cmdq_append(c, new_item);
  cmd_list_free(pr->cmdlist);
  break;
 }

 free(command);
}
