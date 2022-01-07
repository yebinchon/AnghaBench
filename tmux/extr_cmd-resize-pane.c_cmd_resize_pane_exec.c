
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct winlink {struct window* window; } ;
struct window_pane {int dummy; } ;
struct window {int flags; int sx; int sy; } ;
struct session {int dummy; } ;
struct cmdq_shared {int mouse; } ;
struct TYPE_3__ {struct session* s; struct winlink* wl; struct window_pane* wp; } ;
struct cmdq_item {TYPE_1__ target; struct client* client; struct cmdq_shared* shared; } ;
struct cmd {struct args* args; } ;
struct TYPE_4__ {int (* mouse_drag_update ) (struct client*,int *) ;} ;
struct client {TYPE_2__ tty; struct session* session; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int INT_MAX ;
 int LAYOUT_LEFTRIGHT ;
 int LAYOUT_TOPBOTTOM ;
 int PANE_MINIMUM ;
 int WINDOW_ZOOMED ;
 char* args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 int args_strtonum (struct args*,char,int,int,char**) ;
 int * cmd_mouse_window (int *,struct session**) ;
 int cmd_resize_pane_mouse_update (struct client*,int *) ;
 int cmdq_error (struct cmdq_item*,char*,char const*) ;
 int free (char*) ;
 int layout_resize_pane (struct window_pane*,int ,int,int) ;
 int layout_resize_pane_to (struct window_pane*,int ,int) ;
 int server_redraw_window (struct window*) ;
 int server_status_window (struct window*) ;
 int server_unzoom_window (struct window*) ;
 size_t strlen (char const*) ;
 void* strtonum (char*,int,int,char const**) ;
 int window_unzoom (struct window*) ;
 int window_zoom (struct window_pane*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static enum cmd_retval
cmd_resize_pane_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct cmdq_shared *shared = item->shared;
 struct window_pane *wp = item->target.wp;
 struct winlink *wl = item->target.wl;
 struct window *w = wl->window;
 struct client *c = item->client;
 struct session *s = item->target.s;
 const char *errstr, *p;
 char *cause, *copy;
 u_int adjust;
 int x, y, percentage;
 size_t plen;

 if (args_has(args, 'M')) {
  if (cmd_mouse_window(&shared->mouse, &s) == ((void*)0))
   return (CMD_RETURN_NORMAL);
  if (c == ((void*)0) || c->session != s)
   return (CMD_RETURN_NORMAL);
  c->tty.mouse_drag_update = cmd_resize_pane_mouse_update;
  cmd_resize_pane_mouse_update(c, &shared->mouse);
  return (CMD_RETURN_NORMAL);
 }

 if (args_has(args, 'Z')) {
  if (w->flags & WINDOW_ZOOMED)
   window_unzoom(w);
  else
   window_zoom(wp);
  server_redraw_window(w);
  server_status_window(w);
  return (CMD_RETURN_NORMAL);
 }
 server_unzoom_window(w);

 if (args->argc == 0)
  adjust = 1;
 else {
  adjust = strtonum(args->argv[0], 1, INT_MAX, &errstr);
  if (errstr != ((void*)0)) {
   cmdq_error(item, "adjustment %s", errstr);
   return (CMD_RETURN_ERROR);
  }
 }

 if ((p = args_get(args, 'x')) != ((void*)0)) {
  plen = strlen(p);
  if (p[plen - 1] == '%') {
   copy = xstrdup(p);
   copy[plen - 1] = '\0';
   percentage = strtonum(copy, 0, INT_MAX, &errstr);
   free(copy);
   if (errstr != ((void*)0)) {
    cmdq_error(item, "width %s", errstr);
    return (CMD_RETURN_ERROR);
   }
   x = (w->sx * percentage) / 100;
   if (x < PANE_MINIMUM)
    x = PANE_MINIMUM;
   if (x > INT_MAX)
    x = INT_MAX;
  } else {
   x = args_strtonum(args, 'x', PANE_MINIMUM, INT_MAX,
       &cause);
   if (cause != ((void*)0)) {
    cmdq_error(item, "width %s", cause);
    free(cause);
    return (CMD_RETURN_ERROR);
   }
  }
  layout_resize_pane_to(wp, LAYOUT_LEFTRIGHT, x);
 }
 if ((p = args_get(args, 'y')) != ((void*)0)) {
  plen = strlen(p);
  if (p[plen - 1] == '%') {
   copy = xstrdup(p);
   copy[plen - 1] = '\0';
   percentage = strtonum(copy, 0, INT_MAX, &errstr);
   free(copy);
   if (errstr != ((void*)0)) {
    cmdq_error(item, "height %s", errstr);
    return (CMD_RETURN_ERROR);
   }
   y = (w->sy * percentage) / 100;
   if (y < PANE_MINIMUM)
    y = PANE_MINIMUM;
   if (y > INT_MAX)
    y = INT_MAX;
  }
  else {
   y = args_strtonum(args, 'y', PANE_MINIMUM, INT_MAX,
       &cause);
   if (cause != ((void*)0)) {
    cmdq_error(item, "height %s", cause);
    free(cause);
    return (CMD_RETURN_ERROR);
   }
  }
  layout_resize_pane_to(wp, LAYOUT_TOPBOTTOM, y);
 }

 if (args_has(args, 'L'))
  layout_resize_pane(wp, LAYOUT_LEFTRIGHT, -adjust, 1);
 else if (args_has(args, 'R'))
  layout_resize_pane(wp, LAYOUT_LEFTRIGHT, adjust, 1);
 else if (args_has(args, 'U'))
  layout_resize_pane(wp, LAYOUT_TOPBOTTOM, -adjust, 1);
 else if (args_has(args, 'D'))
  layout_resize_pane(wp, LAYOUT_TOPBOTTOM, adjust, 1);
 server_redraw_window(wl->window);

 return (CMD_RETURN_NORMAL);
}
