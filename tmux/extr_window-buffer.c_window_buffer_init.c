
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_buffer_modedata* data; struct window_pane* wp; } ;
struct window_buffer_modedata {int data; void* command; void* format; int fs; struct window_pane* wp; } ;
struct screen {int dummy; } ;
struct cmd_find_state {int dummy; } ;
struct args {scalar_t__ argc; int * argv; } ;


 int WINDOW_BUFFER_DEFAULT_COMMAND ;
 int WINDOW_BUFFER_DEFAULT_FORMAT ;
 int args_get (struct args*,float) ;
 int args_has (struct args*,float) ;
 int cmd_find_copy_state (int *,struct cmd_find_state*) ;
 int mode_tree_build (int ) ;
 int mode_tree_draw (int ) ;
 int mode_tree_start (struct window_pane*,struct args*,int ,int ,int ,int ,struct window_buffer_modedata*,int ,int ,int ,struct screen**) ;
 int mode_tree_zoom (int ,struct args*) ;
 int nitems (int ) ;
 int window_buffer_build ;
 int window_buffer_draw ;
 int window_buffer_menu ;
 int window_buffer_menu_items ;
 int window_buffer_search ;
 int window_buffer_sort_list ;
 struct window_buffer_modedata* xcalloc (int,int) ;
 void* xstrdup (int ) ;

__attribute__((used)) static struct screen *
window_buffer_init(struct window_mode_entry *wme, struct cmd_find_state *fs,
    struct args *args)
{
 struct window_pane *wp = wme->wp;
 struct window_buffer_modedata *data;
 struct screen *s;

 wme->data = data = xcalloc(1, sizeof *data);
 data->wp = wp;
 cmd_find_copy_state(&data->fs, fs);

 if (args == ((void*)0) || !args_has(args, 'F'))
  data->format = xstrdup(WINDOW_BUFFER_DEFAULT_FORMAT);
 else
  data->format = xstrdup(args_get(args, 'F'));
 if (args == ((void*)0) || args->argc == 0)
  data->command = xstrdup(WINDOW_BUFFER_DEFAULT_COMMAND);
 else
  data->command = xstrdup(args->argv[0]);

 data->data = mode_tree_start(wp, args, window_buffer_build,
     window_buffer_draw, window_buffer_search, window_buffer_menu, data,
     window_buffer_menu_items, window_buffer_sort_list,
     nitems(window_buffer_sort_list), &s);
 mode_tree_zoom(data->data, args);

 mode_tree_build(data->data);
 mode_tree_draw(data->data);

 return (s);
}
