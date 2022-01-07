
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct winlink {int dummy; } ;
struct window_pane {int dummy; } ;
struct window_mode_entry {int prefix; struct window_pane* wp; } ;
struct window_copy_cmd_state {TYPE_1__* args; struct winlink* wl; struct session* s; struct client* c; struct window_mode_entry* wme; } ;
struct session {int dummy; } ;
struct client {int dummy; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;
struct TYPE_2__ {int argc; int * argv; } ;


 int WINDOW_COPY_CMD_CANCEL ;
 int WINDOW_COPY_CMD_REDRAW ;
 char* format_single (int *,int ,struct client*,struct session*,struct winlink*,struct window_pane*) ;
 int free (char*) ;
 int window_copy_copy_selection (struct window_mode_entry*,char*) ;
 int window_copy_cursor_down (struct window_mode_entry*,int ) ;
 int window_copy_cursor_end_of_line (struct window_mode_entry*) ;
 int window_copy_start_selection (struct window_mode_entry*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_copy_end_of_line(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct client *c = cs->c;
 struct session *s = cs->s;
 struct winlink *wl = cs->wl;
 struct window_pane *wp = wme->wp;
 u_int np = wme->prefix;
 char *prefix = ((void*)0);

 if (cs->args->argc == 2)
  prefix = format_single(((void*)0), cs->args->argv[1], c, s, wl, wp);

 window_copy_start_selection(wme);
 for (; np > 1; np--)
  window_copy_cursor_down(wme, 0);
 window_copy_cursor_end_of_line(wme);

 if (s != ((void*)0)) {
  window_copy_copy_selection(wme, prefix);

  free(prefix);
  return (WINDOW_COPY_CMD_CANCEL);
 }

 free(prefix);
 return (WINDOW_COPY_CMD_REDRAW);
}
