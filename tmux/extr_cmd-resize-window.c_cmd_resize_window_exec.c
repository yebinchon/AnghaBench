
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct winlink {struct window* window; } ;
struct window {int sx; int sy; int options; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct session* s; struct winlink* wl; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {scalar_t__ argc; int * argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int INT_MAX ;
 int WINDOW_MAXIMUM ;
 int WINDOW_MINIMUM ;
 int WINDOW_SIZE_LARGEST ;
 int WINDOW_SIZE_MANUAL ;
 int WINDOW_SIZE_SMALLEST ;
 scalar_t__ args_has (struct args*,char) ;
 int args_strtonum (struct args*,char,int ,int ,char**) ;
 int cmdq_error (struct cmdq_item*,char*,char const*) ;
 int default_window_size (int *,struct session*,struct window*,int*,int*,int ) ;
 int free (char*) ;
 int options_set_number (int ,char*,int ) ;
 int resize_window (struct window*,int,int) ;
 int strtonum (int ,int,int ,char const**) ;

__attribute__((used)) static enum cmd_retval
cmd_resize_window_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct winlink *wl = item->target.wl;
 struct window *w = wl->window;
 struct session *s = item->target.s;
 const char *errstr;
 char *cause;
 u_int adjust, sx, sy;

 if (args->argc == 0)
  adjust = 1;
 else {
  adjust = strtonum(args->argv[0], 1, INT_MAX, &errstr);
  if (errstr != ((void*)0)) {
   cmdq_error(item, "adjustment %s", errstr);
   return (CMD_RETURN_ERROR);
  }
 }

 sx = w->sx;
 sy = w->sy;

 if (args_has(args, 'x')) {
  sx = args_strtonum(args, 'x', WINDOW_MINIMUM, WINDOW_MAXIMUM,
      &cause);
  if (cause != ((void*)0)) {
   cmdq_error(item, "width %s", cause);
   free(cause);
   return (CMD_RETURN_ERROR);
  }
 }
 if (args_has(args, 'y')) {
  sy = args_strtonum(args, 'y', WINDOW_MINIMUM, WINDOW_MAXIMUM,
      &cause);
  if (cause != ((void*)0)) {
   cmdq_error(item, "height %s", cause);
   free(cause);
   return (CMD_RETURN_ERROR);
  }
 }

 if (args_has(args, 'L')) {
  if (sx >= adjust)
   sx -= adjust;
 } else if (args_has(args, 'R'))
  sx += adjust;
 else if (args_has(args, 'U')) {
  if (sy >= adjust)
   sy -= adjust;
 } else if (args_has(args, 'D'))
  sy += adjust;

 if (args_has(args, 'A'))
  default_window_size(((void*)0), s, w, &sx, &sy, WINDOW_SIZE_LARGEST);
 else if (args_has(args, 'a'))
  default_window_size(((void*)0), s, w, &sx, &sy, WINDOW_SIZE_SMALLEST);

 options_set_number(w->options, "window-size", WINDOW_SIZE_MANUAL);
 resize_window(w, sx, sy);

 return (CMD_RETURN_NORMAL);
}
