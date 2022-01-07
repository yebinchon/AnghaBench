
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct window_pane {int id; } ;
struct window {int dummy; } ;
struct key_event {char key; } ;
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; char* error; int cmdlist; } ;
struct cmd_display_panes_data {int command; } ;
struct client {TYPE_2__* session; struct cmd_display_panes_data* overlay_data; } ;
struct TYPE_4__ {TYPE_1__* curw; } ;
struct TYPE_3__ {struct window* window; } ;





 int cmd_list_free (int ) ;
 struct cmd_parse_result* cmd_parse_from_string (char*,int *) ;
 char* cmd_template_replace (int ,char*,int) ;
 int cmdq_append (struct client*,struct cmdq_item*) ;
 struct cmdq_item* cmdq_get_command (int ,int *,int *,int ) ;
 struct cmdq_item* cmdq_get_error (char*) ;
 int free (char*) ;
 struct window_pane* window_pane_at_index (struct window*,char) ;
 int window_unzoom (struct window*) ;
 int xasprintf (char**,char*,int ) ;

__attribute__((used)) static int
cmd_display_panes_key(struct client *c, struct key_event *event)
{
 struct cmd_display_panes_data *cdata = c->overlay_data;
 struct cmdq_item *new_item;
 char *cmd, *expanded;
 struct window *w = c->session->curw->window;
 struct window_pane *wp;
 struct cmd_parse_result *pr;

 if (event->key < '0' || event->key > '9')
  return (-1);

 wp = window_pane_at_index(w, event->key - '0');
 if (wp == ((void*)0))
  return (1);
 window_unzoom(w);

 xasprintf(&expanded, "%%%u", wp->id);
 cmd = cmd_template_replace(cdata->command, expanded, 1);

 pr = cmd_parse_from_string(cmd, ((void*)0));
 switch (pr->status) {
 case 130:
  new_item = ((void*)0);
  break;
 case 129:
  new_item = cmdq_get_error(pr->error);
  free(pr->error);
  cmdq_append(c, new_item);
  break;
 case 128:
  new_item = cmdq_get_command(pr->cmdlist, ((void*)0), ((void*)0), 0);
  cmd_list_free(pr->cmdlist);
  cmdq_append(c, new_item);
  break;
 }

 free(cmd);
 free(expanded);
 return (1);
}
