
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {int dummy; } ;
struct session {int dummy; } ;
struct cmdq_shared {int mouse; } ;
struct TYPE_2__ {struct window_pane* wp; } ;
struct cmdq_item {TYPE_1__ target; struct client* client; struct cmdq_shared* shared; } ;
struct cmd {struct args* args; int * entry; } ;
struct client {struct session* session; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 scalar_t__ args_has (struct args*,unsigned char) ;
 int cmd_clock_mode_entry ;
 struct window_pane* cmd_mouse_pane (int *,struct session**,int *) ;
 int window_clock_mode ;
 int window_copy_mode ;
 int window_copy_pageup (struct window_pane*,int ) ;
 int window_copy_start_drag (struct client*,int *) ;
 int window_pane_set_mode (struct window_pane*,int *,int *,struct args*) ;

__attribute__((used)) static enum cmd_retval
cmd_copy_mode_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct cmdq_shared *shared = item->shared;
 struct client *c = item->client;
 struct session *s;
 struct window_pane *wp = item->target.wp;

 if (args_has(args, 'M')) {
  if ((wp = cmd_mouse_pane(&shared->mouse, &s, ((void*)0))) == ((void*)0))
   return (CMD_RETURN_NORMAL);
  if (c == ((void*)0) || c->session != s)
   return (CMD_RETURN_NORMAL);
 }

 if (self->entry == &cmd_clock_mode_entry) {
  window_pane_set_mode(wp, &window_clock_mode, ((void*)0), ((void*)0));
  return (CMD_RETURN_NORMAL);
 }

 if (!window_pane_set_mode(wp, &window_copy_mode, ((void*)0), args)) {
  if (args_has(args, 'M'))
   window_copy_start_drag(c, &shared->mouse);
 }
 if (args_has(self->args, 'u'))
  window_copy_pageup(wp, 0);

 return (CMD_RETURN_NORMAL);
}
