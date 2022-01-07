
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mouse_event {int dummy; } ;
struct job {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; int cmdlist; int error; } ;
struct cmd_if_shell_data {char* cmd_else; char* cmd_if; int * item; int input; struct mouse_event mouse; struct client* client; } ;
struct client {int dummy; } ;





 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int cmd_list_free (int ) ;
 struct cmd_parse_result* cmd_parse_from_string (char*,int *) ;
 int cmdq_append (struct client*,struct cmdq_item*) ;
 int cmdq_continue (int *) ;
 int cmdq_error (int *,char*,int ) ;
 struct cmdq_item* cmdq_get_command (int ,int *,struct mouse_event*,int ) ;
 int cmdq_insert_after (int *,struct cmdq_item*) ;
 int free (int ) ;
 struct cmd_if_shell_data* job_get_data (struct job*) ;
 int job_get_status (struct job*) ;

__attribute__((used)) static void
cmd_if_shell_callback(struct job *job)
{
 struct cmd_if_shell_data *cdata = job_get_data(job);
 struct client *c = cdata->client;
 struct mouse_event *m = &cdata->mouse;
 struct cmdq_item *new_item = ((void*)0);
 char *cmd;
 int status;
 struct cmd_parse_result *pr;

 status = job_get_status(job);
 if (!WIFEXITED(status) || WEXITSTATUS(status) != 0)
  cmd = cdata->cmd_else;
 else
  cmd = cdata->cmd_if;
 if (cmd == ((void*)0))
  goto out;

 pr = cmd_parse_from_string(cmd, &cdata->input);
 switch (pr->status) {
 case 130:
  break;
 case 129:
  if (cdata->item != ((void*)0))
         cmdq_error(cdata->item, "%s", pr->error);
  free(pr->error);
  break;
 case 128:
  new_item = cmdq_get_command(pr->cmdlist, ((void*)0), m, 0);
  cmd_list_free(pr->cmdlist);
  break;
 }
 if (new_item != ((void*)0)) {
  if (cdata->item == ((void*)0))
   cmdq_append(c, new_item);
  else
   cmdq_insert_after(cdata->item, new_item);
 }

out:
 if (cdata->item != ((void*)0))
  cmdq_continue(cdata->item);
}
