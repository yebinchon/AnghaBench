
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct winlink {int dummy; } ;
struct window_pane {int modes; } ;
struct window_mode_entry {TYPE_2__* mode; scalar_t__ prefix; } ;
struct session {int options; } ;
struct mouse_event {int key; int valid; } ;
struct cmd_find_state {struct winlink* wl; struct session* s; struct window_pane* wp; } ;
struct cmdq_item {int client; TYPE_1__* shared; struct cmd_find_state target; } ;
struct cmd {int * entry; struct args* args; } ;
struct client {int dummy; } ;
struct args {int argc; } ;
typedef int key_code ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {int (* command ) (struct window_mode_entry*,struct client*,struct session*,struct winlink*,struct args*,struct mouse_event*) ;} ;
struct TYPE_3__ {struct mouse_event mouse; } ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 struct window_mode_entry* TAILQ_FIRST (int *) ;
 int UINT_MAX ;
 scalar_t__ args_has (struct args*,char) ;
 scalar_t__ args_strtonum (struct args*,char,int,int ,char**) ;
 struct client* cmd_find_client (struct cmdq_item*,int *,int) ;
 struct window_pane* cmd_mouse_pane (struct mouse_event*,struct session**,int *) ;
 int cmd_send_keys_inject_key (struct client*,struct cmd_find_state*,struct cmdq_item*,int ) ;
 struct cmdq_item* cmd_send_keys_inject_string (struct client*,struct cmd_find_state*,struct cmdq_item*,struct args*,int) ;
 int cmd_send_prefix_entry ;
 int cmdq_error (struct cmdq_item*,char*,...) ;
 int free (char*) ;
 int input_reset (struct window_pane*,int) ;
 int options_get_number (int ,char*) ;
 int stub1 (struct window_mode_entry*,struct client*,struct session*,struct winlink*,struct args*,struct mouse_event*) ;
 int window_pane_key (struct window_pane*,int ,struct session*,struct winlink*,int ,struct mouse_event*) ;
 int window_pane_reset_palette (struct window_pane*) ;

__attribute__((used)) static enum cmd_retval
cmd_send_keys_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct client *c = cmd_find_client(item, ((void*)0), 1);
 struct cmd_find_state *fs = &item->target;
 struct window_pane *wp = item->target.wp;
 struct session *s = item->target.s;
 struct winlink *wl = item->target.wl;
 struct mouse_event *m = &item->shared->mouse;
 struct window_mode_entry *wme = TAILQ_FIRST(&wp->modes);
 int i;
 key_code key;
 u_int np = 1;
 char *cause = ((void*)0);

 if (args_has(args, 'N')) {
  np = args_strtonum(args, 'N', 1, UINT_MAX, &cause);
  if (cause != ((void*)0)) {
   cmdq_error(item, "repeat count %s", cause);
   free(cause);
   return (CMD_RETURN_ERROR);
  }
  if (wme != ((void*)0) && (args_has(args, 'X') || args->argc == 0)) {
   if (wme == ((void*)0) || wme->mode->command == ((void*)0)) {
    cmdq_error(item, "not in a mode");
    return (CMD_RETURN_ERROR);
   }
   wme->prefix = np;
  }
 }

 if (args_has(args, 'X')) {
  if (wme == ((void*)0) || wme->mode->command == ((void*)0)) {
   cmdq_error(item, "not in a mode");
   return (CMD_RETURN_ERROR);
  }
  if (!m->valid)
   m = ((void*)0);
  wme->mode->command(wme, c, s, wl, args, m);
  return (CMD_RETURN_NORMAL);
 }

 if (args_has(args, 'M')) {
  wp = cmd_mouse_pane(m, &s, ((void*)0));
  if (wp == ((void*)0)) {
   cmdq_error(item, "no mouse target");
   return (CMD_RETURN_ERROR);
  }
  window_pane_key(wp, item->client, s, wl, m->key, m);
  return (CMD_RETURN_NORMAL);
 }

 if (self->entry == &cmd_send_prefix_entry) {
  if (args_has(args, '2'))
   key = options_get_number(s->options, "prefix2");
  else
   key = options_get_number(s->options, "prefix");
  cmd_send_keys_inject_key(c, fs, item, key);
  return (CMD_RETURN_NORMAL);
 }

 if (args_has(args, 'R')) {
  window_pane_reset_palette(wp);
  input_reset(wp, 1);
 }

 for (; np != 0; np--) {
  for (i = 0; i < args->argc; i++)
   item = cmd_send_keys_inject_string(c, fs, item, args, i);
 }

 return (CMD_RETURN_NORMAL);
}
