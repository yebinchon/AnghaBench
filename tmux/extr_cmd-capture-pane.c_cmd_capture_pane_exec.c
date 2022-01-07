
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int grid; } ;
struct window_pane {TYPE_2__ base; } ;
struct TYPE_3__ {struct window_pane* wp; } ;
struct cmdq_item {struct client* client; TYPE_1__ target; } ;
struct cmd {int * entry; struct args* args; } ;
struct client {int flags; int stdout_data; int * session; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CLIENT_CONTROL ;
 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 char* args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 char* cmd_capture_pane_history (struct args*,struct cmdq_item*,struct window_pane*,size_t*) ;
 char* cmd_capture_pane_pending (struct args*,struct window_pane*,size_t*) ;
 int cmd_clear_history_entry ;
 int cmdq_error (struct cmdq_item*,char*,...) ;
 int evbuffer_add (int ,char*,int) ;
 int free (char*) ;
 int grid_clear_history (int ) ;
 scalar_t__ paste_set (char*,size_t,char const*,char**) ;
 int server_client_push_stdout (struct client*) ;
 int window_pane_reset_mode_all (struct window_pane*) ;

__attribute__((used)) static enum cmd_retval
cmd_capture_pane_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct client *c;
 struct window_pane *wp = item->target.wp;
 char *buf, *cause;
 const char *bufname;
 size_t len;

 if (self->entry == &cmd_clear_history_entry) {
  window_pane_reset_mode_all(wp);
  grid_clear_history(wp->base.grid);
  return (CMD_RETURN_NORMAL);
 }

 len = 0;
 if (args_has(args, 'P'))
  buf = cmd_capture_pane_pending(args, wp, &len);
 else
  buf = cmd_capture_pane_history(args, item, wp, &len);
 if (buf == ((void*)0))
  return (CMD_RETURN_ERROR);

 if (args_has(args, 'p')) {
  c = item->client;
  if (c == ((void*)0) ||
      (c->session != ((void*)0) && !(c->flags & CLIENT_CONTROL))) {
   cmdq_error(item, "can't write to stdout");
   free(buf);
   return (CMD_RETURN_ERROR);
  }
  evbuffer_add(c->stdout_data, buf, len);
  free(buf);
  if (args_has(args, 'P') && len > 0)
      evbuffer_add(c->stdout_data, "\n", 1);
  server_client_push_stdout(c);
 } else {
  bufname = ((void*)0);
  if (args_has(args, 'b'))
   bufname = args_get(args, 'b');

  if (paste_set(buf, len, bufname, &cause) != 0) {
   cmdq_error(item, "%s", cause);
   free(cause);
   free(buf);
   return (CMD_RETURN_ERROR);
  }
 }

 return (CMD_RETURN_NORMAL);
}
