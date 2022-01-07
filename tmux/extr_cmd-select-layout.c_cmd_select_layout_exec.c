
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {struct window* window; } ;
struct window_pane {int dummy; } ;
struct window {char* old_layout; int lastlayout; int layout_root; } ;
struct TYPE_2__ {struct window_pane* wp; struct winlink* wl; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {int * entry; struct args* args; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 scalar_t__ args_has (struct args*,char) ;
 int cmd_next_layout_entry ;
 int cmd_previous_layout_entry ;
 int cmdq_error (struct cmdq_item*,char*,char const*) ;
 int free (char*) ;
 char* layout_dump (int ) ;
 int layout_parse (struct window*,char const*) ;
 int layout_set_lookup (char*) ;
 int layout_set_next (struct window*) ;
 int layout_set_previous (struct window*) ;
 int layout_set_select (struct window*,int) ;
 int layout_spread_out (struct window_pane*) ;
 int notify_window (char*,struct window*) ;
 int recalculate_sizes () ;
 int server_redraw_window (struct window*) ;
 int server_unzoom_window (struct window*) ;

__attribute__((used)) static enum cmd_retval
cmd_select_layout_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct winlink *wl = item->target.wl;
 struct window *w = wl->window;
 struct window_pane *wp = item->target.wp;
 const char *layoutname;
 char *oldlayout;
 int next, previous, layout;

 server_unzoom_window(w);

 next = self->entry == &cmd_next_layout_entry;
 if (args_has(args, 'n'))
  next = 1;
 previous = self->entry == &cmd_previous_layout_entry;
 if (args_has(args, 'p'))
  previous = 1;

 oldlayout = w->old_layout;
 w->old_layout = layout_dump(w->layout_root);

 if (next || previous) {
  if (next)
   layout_set_next(w);
  else
   layout_set_previous(w);
  goto changed;
 }

 if (args_has(args, 'E')) {
  layout_spread_out(wp);
  goto changed;
 }

 if (!args_has(args, 'o')) {
  if (args->argc == 0)
   layout = w->lastlayout;
  else
   layout = layout_set_lookup(args->argv[0]);
  if (layout != -1) {
   layout_set_select(w, layout);
   goto changed;
  }
 }

 if (args->argc != 0)
  layoutname = args->argv[0];
 else if (args_has(args, 'o'))
  layoutname = oldlayout;
 else
  layoutname = ((void*)0);

 if (layoutname != ((void*)0)) {
  if (layout_parse(w, layoutname) == -1) {
   cmdq_error(item, "can't set layout: %s", layoutname);
   goto error;
  }
  goto changed;
 }

 free(oldlayout);
 return (CMD_RETURN_NORMAL);

changed:
 free(oldlayout);
 recalculate_sizes();
 server_redraw_window(w);
 notify_window("window-layout-changed", w);
 return (CMD_RETURN_NORMAL);

error:
 free(w->old_layout);
 w->old_layout = oldlayout;
 return (CMD_RETURN_ERROR);
}
