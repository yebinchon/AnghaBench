
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {int dummy; } ;
struct window_pane {int id; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {int client; TYPE_1__ target; } ;
struct cmd_run_shell_data {int wp_id; int cmd; struct cmdq_item* item; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int * argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int CMD_RETURN_WAIT ;
 scalar_t__ args_has (struct args*,char) ;
 struct client* cmd_find_client (struct cmdq_item*,int *,int) ;
 int cmd_run_shell_callback ;
 int cmd_run_shell_free ;
 int cmdq_error (struct cmdq_item*,char*,int ) ;
 int format_single (struct cmdq_item*,int ,struct client*,struct session*,struct winlink*,struct window_pane*) ;
 int free (struct cmd_run_shell_data*) ;
 int * job_run (int ,struct session*,int ,int *,int ,int ,struct cmd_run_shell_data*,int ) ;
 int server_client_get_cwd (int ,struct session*) ;
 struct cmd_run_shell_data* xcalloc (int,int) ;

__attribute__((used)) static enum cmd_retval
cmd_run_shell_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct cmd_run_shell_data *cdata;
 struct client *c = cmd_find_client(item, ((void*)0), 1);
 struct session *s = item->target.s;
 struct winlink *wl = item->target.wl;
 struct window_pane *wp = item->target.wp;

 cdata = xcalloc(1, sizeof *cdata);
 cdata->cmd = format_single(item, args->argv[0], c, s, wl, wp);

 if (args_has(args, 't') && wp != ((void*)0))
  cdata->wp_id = wp->id;
 else
  cdata->wp_id = -1;

 if (!args_has(args, 'b'))
  cdata->item = item;

 if (job_run(cdata->cmd, s, server_client_get_cwd(item->client, s), ((void*)0),
     cmd_run_shell_callback, cmd_run_shell_free, cdata, 0) == ((void*)0)) {
  cmdq_error(item, "failed to run command: %s", cdata->cmd);
  free(cdata);
  return (CMD_RETURN_ERROR);
 }

 if (args_has(args, 'b'))
  return (CMD_RETURN_NORMAL);
 return (CMD_RETURN_WAIT);
}
