
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct winlink {TYPE_2__* window; } ;
struct session {int dummy; } ;
struct TYPE_4__ {struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int * argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_5__ {int options; } ;


 int CMD_RETURN_NORMAL ;
 struct client* cmd_find_client (struct cmdq_item*,int *,int) ;
 char* format_single (struct cmdq_item*,int ,struct client*,struct session*,struct winlink*,int *) ;
 int free (char*) ;
 int options_set_number (int ,char*,int ) ;
 int server_status_window (TYPE_2__*) ;
 int window_set_name (TYPE_2__*,char*) ;

__attribute__((used)) static enum cmd_retval
cmd_rename_window_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct client *c = cmd_find_client(item, ((void*)0), 1);
 struct session *s = item->target.s;
 struct winlink *wl = item->target.wl;
 char *newname;

 newname = format_single(item, args->argv[0], c, s, wl, ((void*)0));
 window_set_name(wl->window, newname);
 options_set_number(wl->window->options, "automatic-rename", 0);

 server_status_window(wl->window);
 free(newname);

 return (CMD_RETURN_NORMAL);
}
