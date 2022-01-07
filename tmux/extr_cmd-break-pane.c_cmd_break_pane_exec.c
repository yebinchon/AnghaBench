
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct winlink {int idx; struct window* window; } ;
struct window_pane {int flags; int options; struct window* window; } ;
struct window {int options; struct client* latest; struct window_pane* active; int panes; int sy; int sx; } ;
struct session {int options; int windows; } ;
struct TYPE_6__ {int idx; struct session* s; } ;
struct TYPE_5__ {struct window_pane* wp; struct session* s; struct winlink* wl; } ;
struct cmdq_item {TYPE_3__ target; TYPE_2__ source; TYPE_1__* shared; } ;
struct cmd_find_state {int dummy; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {struct cmd_find_state current; } ;


 char* BREAK_PANE_TEMPLATE ;
 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int PANE_CHANGED ;
 int PANE_STYLECHANGED ;
 int TAILQ_INSERT_HEAD (int *,struct window_pane*,int ) ;
 int TAILQ_REMOVE (int *,struct window_pane*,int ) ;
 char* args_get (struct args*,float) ;
 scalar_t__ args_has (struct args*,char) ;
 struct client* cmd_find_client (struct cmdq_item*,int *,int) ;
 int cmd_find_from_session (struct cmd_find_state*,struct session*,int ) ;
 int cmdq_error (struct cmdq_item*,char*,...) ;
 int cmdq_print (struct cmdq_item*,char*,char*) ;
 char* default_window_name (struct window*) ;
 int entry ;
 char* format_single (struct cmdq_item*,char const*,struct client*,struct session*,struct winlink*,struct window_pane*) ;
 int free (char*) ;
 int layout_close_pane (struct window_pane*) ;
 int layout_init (struct window*,struct window_pane*) ;
 int options_get_number (int ,char*) ;
 int options_set_number (int ,char*,int ) ;
 int options_set_parent (int ,int ) ;
 int server_redraw_session (struct session*) ;
 int server_status_session_group (struct session*) ;
 int server_unzoom_window (struct window*) ;
 struct winlink* session_attach (struct session*,struct window*,int,char**) ;
 int session_select (struct session*,int ) ;
 int window_count_panes (struct window*) ;
 struct window* window_create (int ,int ) ;
 int window_lost_pane (struct window*,struct window_pane*) ;
 int window_set_name (struct window*,char*) ;
 int * winlink_find_by_index (int *,int) ;

__attribute__((used)) static enum cmd_retval
cmd_break_pane_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct cmd_find_state *current = &item->shared->current;
 struct client *c = cmd_find_client(item, ((void*)0), 1);
 struct winlink *wl = item->source.wl;
 struct session *src_s = item->source.s;
 struct session *dst_s = item->target.s;
 struct window_pane *wp = item->source.wp;
 struct window *w = wl->window;
 char *name, *cause;
 int idx = item->target.idx;
 const char *template;
 char *cp;

 if (idx != -1 && winlink_find_by_index(&dst_s->windows, idx) != ((void*)0)) {
  cmdq_error(item, "index %d already in use", idx);
  return (CMD_RETURN_ERROR);
 }

 if (window_count_panes(w) == 1) {
  cmdq_error(item, "can't break with only one pane");
  return (CMD_RETURN_ERROR);
 }
 server_unzoom_window(w);

 TAILQ_REMOVE(&w->panes, wp, entry);
 window_lost_pane(w, wp);
 layout_close_pane(wp);

 w = wp->window = window_create(w->sx, w->sy);
 options_set_parent(wp->options, w->options);
 wp->flags |= PANE_STYLECHANGED;
 TAILQ_INSERT_HEAD(&w->panes, wp, entry);
 w->active = wp;
 w->latest = c;

 if (!args_has(args, 'n')) {
  name = default_window_name(w);
  window_set_name(w, name);
  free(name);
 } else {
  window_set_name(w, args_get(args, 'n'));
  options_set_number(w->options, "automatic-rename", 0);
 }

 layout_init(w, wp);
 wp->flags |= PANE_CHANGED;

 if (idx == -1)
  idx = -1 - options_get_number(dst_s->options, "base-index");
 wl = session_attach(dst_s, w, idx, &cause);
 if (!args_has(self->args, 'd')) {
  session_select(dst_s, wl->idx);
  cmd_find_from_session(current, dst_s, 0);
 }

 server_redraw_session(src_s);
 if (src_s != dst_s)
  server_redraw_session(dst_s);
 server_status_session_group(src_s);
 if (src_s != dst_s)
  server_status_session_group(dst_s);

 if (args_has(args, 'P')) {
  if ((template = args_get(args, 'F')) == ((void*)0))
   template = BREAK_PANE_TEMPLATE;
  cp = format_single(item, template, c, dst_s, wl, wp);
  cmdq_print(item, "%s", cp);
  free(cp);
 }
 return (CMD_RETURN_NORMAL);
}
