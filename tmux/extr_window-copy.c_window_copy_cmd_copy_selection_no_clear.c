
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {int dummy; } ;
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_pane* wp; } ;
struct window_copy_cmd_state {TYPE_1__* args; struct winlink* wl; struct session* s; struct client* c; struct window_mode_entry* wme; } ;
struct session {int dummy; } ;
struct client {int dummy; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;
struct TYPE_2__ {int argc; int * argv; } ;


 int WINDOW_COPY_CMD_NOTHING ;
 char* format_single (int *,int ,struct client*,struct session*,struct winlink*,struct window_pane*) ;
 int free (char*) ;
 int window_copy_copy_selection (struct window_mode_entry*,char*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_copy_selection_no_clear(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct client *c = cs->c;
 struct session *s = cs->s;
 struct winlink *wl = cs->wl;
 struct window_pane *wp = wme->wp;
 char *prefix = ((void*)0);

 if (cs->args->argc == 2)
  prefix = format_single(((void*)0), cs->args->argv[1], c, s, wl, wp);

 if (s != ((void*)0))
  window_copy_copy_selection(wme, prefix);

 free(prefix);
 return (WINDOW_COPY_CMD_NOTHING);
}
