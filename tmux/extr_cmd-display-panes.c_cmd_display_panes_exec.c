
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct session {int options; } ;
struct cmdq_item {int dummy; } ;
struct cmd_display_panes_data {struct cmdq_item* item; void* command; } ;
struct cmd {struct args* args; } ;
struct client {int * overlay_draw; struct session* session; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int CMD_RETURN_WAIT ;
 int UINT_MAX ;
 int args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 int args_strtonum (struct args*,char,int ,int ,char**) ;
 int cmd_display_panes_draw ;
 int cmd_display_panes_free ;
 int cmd_display_panes_key ;
 struct client* cmd_find_client (struct cmdq_item*,int ,int ) ;
 int cmdq_error (struct cmdq_item*,char*,char*) ;
 int free (char*) ;
 int options_get_number (int ,char*) ;
 int server_client_set_overlay (struct client*,int ,int ,int ,int ,struct cmd_display_panes_data*) ;
 struct cmd_display_panes_data* xmalloc (int) ;
 void* xstrdup (char*) ;

__attribute__((used)) static enum cmd_retval
cmd_display_panes_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct client *c;
 struct session *s;
 u_int delay;
 char *cause;
 struct cmd_display_panes_data *cdata;

 if ((c = cmd_find_client(item, args_get(args, 't'), 0)) == ((void*)0))
  return (CMD_RETURN_ERROR);
 s = c->session;

 if (c->overlay_draw != ((void*)0))
  return (CMD_RETURN_NORMAL);

 if (args_has(args, 'd')) {
  delay = args_strtonum(args, 'd', 0, UINT_MAX, &cause);
  if (cause != ((void*)0)) {
   cmdq_error(item, "delay %s", cause);
   free(cause);
   return (CMD_RETURN_ERROR);
  }
 } else
  delay = options_get_number(s->options, "display-panes-time");

 cdata = xmalloc(sizeof *cdata);
 if (args->argc != 0)
  cdata->command = xstrdup(args->argv[0]);
 else
  cdata->command = xstrdup("select-pane -t '%%'");
 if (args_has(args, 'b'))
  cdata->item = ((void*)0);
 else
  cdata->item = item;

 server_client_set_overlay(c, delay, cmd_display_panes_draw,
     cmd_display_panes_key, cmd_display_panes_free, cdata);

 if (args_has(args, 'b'))
  return (CMD_RETURN_NORMAL);
 return (CMD_RETURN_WAIT);
}
