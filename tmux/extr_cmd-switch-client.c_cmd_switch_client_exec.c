
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct winlink {struct window* window; } ;
struct window_pane {int dummy; } ;
struct window {int dummy; } ;
struct session {TYPE_2__* curw; int last_attached_time; int environ; int options; } ;
struct key_table {int references; } ;
struct TYPE_6__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_1__* shared; int * client; TYPE_3__ target; } ;
struct cmd {struct args* args; } ;
struct client {struct session* session; struct session* last_session; int environ; struct key_table* keytable; int flags; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
typedef enum cmd_find_type { ____Placeholder_cmd_find_type } cmd_find_type ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int flags; int current; } ;


 int CLIENT_READONLY ;
 int CMDQ_SHARED_REPEAT ;
 int CMD_FIND_PANE ;
 int CMD_FIND_PREFER_UNATTACHED ;
 int CMD_FIND_SESSION ;
 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int WINLINK_ALERTFLAGS ;
 int alerts_check_session (struct session*) ;
 char* args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 struct client* cmd_find_client (struct cmdq_item*,char*,int ) ;
 int cmd_find_from_session (int *,struct session*,int ) ;
 scalar_t__ cmd_find_target (TYPE_3__*,struct cmdq_item*,char const*,int,int) ;
 int cmdq_error (struct cmdq_item*,char*,...) ;
 int environ_update (int ,int ,int ) ;
 int gettimeofday (int *,int *) ;
 struct key_table* key_bindings_get_table (char const*,int ) ;
 int key_bindings_unref_table (struct key_table*) ;
 int notify_client (char*,struct client*) ;
 int recalculate_sizes () ;
 int server_check_unattached () ;
 int server_client_set_key_table (struct client*,int *) ;
 int server_redraw_client (struct client*) ;
 int server_redraw_window (struct window*) ;
 scalar_t__ session_alive (struct session*) ;
 struct session* session_next_session (struct session*) ;
 struct session* session_previous_session (struct session*) ;
 int session_set_current (struct session*,struct winlink*) ;
 int session_update_activity (struct session*,int *) ;
 int status_timer_start (struct client*) ;
 size_t strcspn (char const*,char*) ;
 int tty_update_client_offset (struct client*) ;
 scalar_t__ window_pop_zoom (struct window*) ;
 scalar_t__ window_push_zoom (struct window*,scalar_t__) ;
 int window_redraw_active_switch (struct window*,struct window_pane*) ;
 int window_set_active_pane (struct window*,struct window_pane*,int) ;

__attribute__((used)) static enum cmd_retval
cmd_switch_client_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 const char *tflag = args_get(args, 't');
 enum cmd_find_type type;
 int flags;
 struct client *c;
 struct session *s;
 struct winlink *wl;
 struct window *w;
 struct window_pane *wp;
 const char *tablename;
 struct key_table *table;

 if ((c = cmd_find_client(item, args_get(args, 'c'), 0)) == ((void*)0))
  return (CMD_RETURN_ERROR);

 if (tflag != ((void*)0) && tflag[strcspn(tflag, ":.%")] != '\0') {
  type = CMD_FIND_PANE;
  flags = 0;
 } else {
  type = CMD_FIND_SESSION;
  flags = CMD_FIND_PREFER_UNATTACHED;
 }
 if (cmd_find_target(&item->target, item, tflag, type, flags) != 0)
  return (CMD_RETURN_ERROR);
 s = item->target.s;
 wl = item->target.wl;
 w = wl->window;
 wp = item->target.wp;

 if (args_has(args, 'r'))
  c->flags ^= CLIENT_READONLY;

 tablename = args_get(args, 'T');
 if (tablename != ((void*)0)) {
  table = key_bindings_get_table(tablename, 0);
  if (table == ((void*)0)) {
   cmdq_error(item, "table %s doesn't exist", tablename);
   return (CMD_RETURN_ERROR);
  }
  table->references++;
  key_bindings_unref_table(c->keytable);
  c->keytable = table;
  return (CMD_RETURN_NORMAL);
 }

 if (args_has(args, 'n')) {
  if ((s = session_next_session(c->session)) == ((void*)0)) {
   cmdq_error(item, "can't find next session");
   return (CMD_RETURN_ERROR);
  }
 } else if (args_has(args, 'p')) {
  if ((s = session_previous_session(c->session)) == ((void*)0)) {
   cmdq_error(item, "can't find previous session");
   return (CMD_RETURN_ERROR);
  }
 } else if (args_has(args, 'l')) {
  if (c->last_session != ((void*)0) && session_alive(c->last_session))
   s = c->last_session;
  else
   s = ((void*)0);
  if (s == ((void*)0)) {
   cmdq_error(item, "can't find last session");
   return (CMD_RETURN_ERROR);
  }
 } else {
  if (item->client == ((void*)0))
   return (CMD_RETURN_NORMAL);
  if (wl != ((void*)0) && wp != ((void*)0)) {
   if (window_push_zoom(w, args_has(self->args, 'Z')))
    server_redraw_window(w);
   window_redraw_active_switch(w, wp);
   window_set_active_pane(w, wp, 1);
   if (window_pop_zoom(w))
    server_redraw_window(w);
  }
  if (wl != ((void*)0)) {
   session_set_current(s, wl);
   cmd_find_from_session(&item->shared->current, s, 0);
  }
 }

 if (!args_has(args, 'E'))
  environ_update(s->options, c->environ, s->environ);

 if (c->session != ((void*)0) && c->session != s)
  c->last_session = c->session;
 c->session = s;
 if (~item->shared->flags & CMDQ_SHARED_REPEAT)
  server_client_set_key_table(c, ((void*)0));
 tty_update_client_offset(c);
 status_timer_start(c);
 notify_client("client-session-changed", c);
 session_update_activity(s, ((void*)0));
 gettimeofday(&s->last_attached_time, ((void*)0));

 recalculate_sizes();
 server_check_unattached();
 server_redraw_client(c);
 s->curw->flags &= ~WINLINK_ALERTFLAGS;
 alerts_check_session(s);

 return (CMD_RETURN_NORMAL);
}
